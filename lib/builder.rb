# frozen_string_literal: true

require_relative 'build_spec'
require_relative 'partial_cache'
require_relative 'generator'

class Builder
  def initialize(build_specs, constants, repos_cfg)
    @build_specs = build_specs
    @constants   = constants
    @repos_cfg   = repos_cfg
  end

  def run
    builds = @build_specs.flat_map { |spec| spec.localized_builds(@repos_cfg) }
    cache  = PartialCache.new(builds)
    Generator.new(builds, cache, @constants).run
  end
end
