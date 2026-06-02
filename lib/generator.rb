# frozen_string_literal: true

require 'liquid'

class Generator
  def initialize(localized_builds, cache, constants)
    @localized_builds = localized_builds
    @cache            = cache
    @constants        = constants
  end

  def run
    @localized_builds.each do |build|
      File.open(build.output_filename, 'w:utf-8') do |f|
        build.partials.each { |partial| f << render(partial, build) }
      end
      warn "built #{build.output_filename}"
    end
  end

  private

  def render(partial, build)
    variables = @constants.merge(partial.vars).merge('os' => build.os, 'build_md' => build.output_filename)
    "#{Liquid::Template.parse(@cache[partial.url].clone).render(variables)}\n\n"
  end
end
