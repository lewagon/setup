# frozen_string_literal: true

module Partial
  class Local
    attr_reader :url, :vars

    def initialize(locale, name, vars)
      localized = "_partials/#{locale}/#{name}.md"
      english   = "_partials/#{name}.md"
      @url      = (locale != 'en' && File.exist?(localized)) ? localized : english
      @vars     = vars
    end

    def content = File.read(@url, encoding: 'utf-8')
  end
end
