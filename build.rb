#!/usr/bin/env ruby -wU

require 'open-uri'
require 'liquid'
require 'yaml'

REPOS_CFG = YAML.load_file('constants/repos.yml').freeze

def load_remote_partial(repo, name, locale)
  repo   = REPOS_CFG.dig('aliases',  repo) || repo
  branch = REPOS_CFG.dig('branches', repo) || 'main'
  path = locale == 'en' ? name : "#{locale}/#{name}"
  base_url = "https://github.com/lewagon/#{repo}/blob/#{branch}"
  content = URI.open("https://raw.githubusercontent.com/lewagon/#{repo}/#{branch}/_partials/#{path}.md").read
  content.scan(/\!\[.*\]\((.*)\)/).flatten
         .reject { |ip| ip.start_with?("http") }
         .each   { |ip| content.gsub!(ip, "#{base_url}/#{ip}") }
  content.scan(/src="(images\/.*)"/).flatten
         .each   { |ip| content.gsub!(ip, "#{base_url}/#{ip}") }
  content
end

def load_local_partial(name, locale)
  localized = "_partials/#{locale}/#{name}.md"
  path = (locale != 'en' && File.exist?(localized)) ? localized : "_partials/#{name}.md"
  File.read(path, encoding: "utf-8")
end

def load_partial(partial, locale)
  if (m = partial.match(%r{\A(?<repo>[a-z][a-z0-9_-]*)/(?<name>[a-z0-9_]+)\z}))
    load_remote_partial(m[:repo], m[:name], locale)
  else
    load_local_partial(partial, locale)
  end
end

def partial_name(entry) = entry.is_a?(Array) ? entry[0] : entry
def partial_vars(entry) = entry.is_a?(Array) ? entry[1] : {}

def collect_partials(builds)
  builds.flat_map { |_filename, build|
    build[:locales].flat_map { |locale|
      build[:partials].map { |e| [partial_name(e), locale] }
    }
  }.uniq.map { |partial, locale|
    ["#{partial}.#{locale}", load_partial(partial, locale)]
  }.to_h
end

def render_content(content, os_name, variables)
  Liquid::Template.parse(content).render(variables.merge('os' => os_name))
end

def generate_files(loaded, builds, constants)
  builds.each do |filename, build|
    build[:locales].each do |locale|
      output = locale == 'en' ? "#{filename}.md" : "#{filename}.#{locale}.md"

      File.open(output, "w:utf-8") do |f|
        build[:partials].each do |entry|
          content = loaded["#{partial_name(entry)}.#{locale}"].clone
          variables = constants.merge(partial_vars(entry)).merge('OS_MD' => output)
          f << render_content(content, build[:os], variables)
          f << "\n\n"
        end
      end
    end
  end
end

builds = Dir['builds/*.yml'].map { |f|
  name = File.basename(f, '.yml')
  data = YAML.load_file(f)
  [name, { os: data['os'], locales: data['locales'], partials: data['partials'] }]
}.to_h.freeze

loaded = collect_partials(builds)

constants = YAML.load_file('constants/constants.yml').freeze

generate_files(loaded, builds, constants)
