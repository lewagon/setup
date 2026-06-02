# frozen_string_literal: true

require 'open-uri'

module Partial
  class Remote
    attr_reader :url, :vars

    def initialize(repo, locale, name, vars, repos_cfg)
      repo      = repos_cfg.dig('aliases',  repo) || repo
      branch    = repos_cfg.dig('branches', repo) || 'main'
      path      = locale == 'en' ? name : "#{locale}/#{name}"
      @base_url = "https://github.com/lewagon/#{repo}/blob/#{branch}"
      @url      = "https://raw.githubusercontent.com/lewagon/#{repo}/#{branch}/_partials/#{path}.md"
      @vars     = vars
    end

    def content
      text = URI.open(@url).read
      # Rewrite relative image paths to absolute GitHub URLs so they render outside their source repo
      text.scan(/\!\[.*\]\((.*)\)/).flatten
          .reject { |ip| ip.start_with?('http') }
          .each   { |ip| text.gsub!(ip, "#{@base_url}/#{ip}") }
      text.scan(/src="(images\/.*)"/).flatten
          .each   { |ip| text.gsub!(ip, "#{@base_url}/#{ip}") }
      warn "fetched #{@url}"
      text
    end
  end
end
