# frozen_string_literal: true

require_relative 'partial'

class LocalizedBuild
  attr_reader :os, :locale, :partials

  def initialize(spec, locale, repos_cfg)
    @name     = spec.name
    @os       = spec.os
    @locale   = locale
    @partials = spec.partials.map { |entry| Partial.from(entry, locale, repos_cfg) }
  end

  def output_filename
    @locale == 'en' ? "#{@name}.md" : "#{@name}.#{@locale}.md"
  end
end
