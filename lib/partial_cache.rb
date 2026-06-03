# frozen_string_literal: true

class PartialCache
  def initialize(localized_builds)
    @cache = localized_builds
      .flat_map(&:partials)
      .uniq    { |partial| partial.url }
      .sort_by { |partial| partial.url }
      .map     { |partial| Thread.new { [partial.url, partial.content] } }
      .map     { |thread| thread.value }
      .tap     { |results| results.each { |url, _| warn "fetched #{url}" } }
      .to_h
  end

  def [](url)
    @cache[url]
  end
end
