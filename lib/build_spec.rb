# frozen_string_literal: true

require_relative 'localized_build'

class BuildSpec
  attr_reader :name, :os, :locales, :partials

  def initialize(name:, os:, locales:, partials:)
    @name     = name
    @os       = os
    @locales  = locales
    @partials = partials
  end

  def localized_builds(repos_cfg)
    @locales.map { |locale| LocalizedBuild.new(self, locale, repos_cfg) }
  end
end
