# frozen_string_literal: true

require_relative 'partial/remote'
require_relative 'partial/local'

module Partial
  REMOTE_REGEX = %r{\A(?<repo>[a-z][a-z0-9_-]*)/(?<name>[a-z0-9_]+)\z}

  # entry is either a plain string or a hash: { 'name' => '...', 'vars' => { ... } }
  def self.from(entry, locale, repos_cfg)
    name = entry.is_a?(Hash) ? entry['name'] : entry
    vars = entry.is_a?(Hash) ? entry.fetch('vars', {}) : {}
    if (m = name.match(REMOTE_REGEX))
      Remote.new(m[:repo], locale, m[:name], vars, repos_cfg)
    else
      Local.new(locale, name, vars)
    end
  end
end
