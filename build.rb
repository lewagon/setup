#!/usr/bin/env ruby
# frozen_string_literal: true

require 'yaml'
require_relative 'lib/builder'

build_specs = Dir['builds/*.yml'].map { |filename|

  data = YAML.load_file(filename)

  BuildSpec.new(
    name:     File.basename(filename, '.yml'),
    os:       data['os'],
    locales:  data['locales'],
    partials: data['partials']
  )
}

constants   = YAML.load_file('constants/constants.yml').freeze
repos_cfg   = YAML.load_file('constants/repos.yml').freeze

Builder.new(build_specs, constants, repos_cfg).run
