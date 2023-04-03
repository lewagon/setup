#!/usr/bin/env ruby -wU

PLACEHOLDERS = {
  'RUBY_SETUP_VERSION' => "3.1.2",
  'NVM_VERSION' => "0.39.1",
  'NODE_VERSION' => "16.15.1",
  'GEMS' => "colored faker http pry-byebug rake rails rest-client rspec rubocop-performance sqlite3"
}

MACOS = %w[
  intro
  macos_zoom
  github
  macos_command_line_tools
  macos_homebrew
  macos_vscode
  vscode_extensions
  vscode_liveshare
  macos_terminal
  oh_my_zsh
  gh_cli
  dotfiles
  macos_rbenv
  ruby
  nvm
  macos_sqlite
  macos_postgresql
  checkup
  kitt
  macos_slack
  slack_settings
  macos_settings
  conclusion].freeze

WINDOWS = %w[
  intro
  zoom
  github
  windows_version
  windows_virtualization
  windows_wsl
  windows_ubuntu
  windows_vscode
  windows_terminal
  vscode_extensions
  vscode_liveshare
  cli_tools
  oh_my_zsh
  windows_browser
  gh_cli
  dotfiles
  ssh_agent
  rbenv
  ruby
  nvm
  sqlite
  windows_postgresql
  checkup
  kitt
  windows_slack
  slack_settings
  windows_settings
  conclusion].freeze

UBUNTU = %w[
  intro
  zoom
  github
  ubuntu_vscode
  vscode_extensions
  vscode_liveshare
  cli_tools
  oh_my_zsh
  gh_cli
  dotfiles
  ssh_agent
  rbenv
  ruby
  nvm
  sqlite
  ubuntu_postgresql
  checkup
  kitt
  ubuntu_slack
  slack_settings
  ubuntu_settings
  conclusion].freeze

SETUPS = {
  "macos.md" => MACOS,
  "windows.md" => WINDOWS,
  "ubuntu.md" => UBUNTU
}

["", "cn", "es", "fr"].each do |locale|
  SETUPS.each do |filename, partials|
    filename = "#{filename.split(".md").first}.#{locale}.md" unless locale.empty?
    File.open(filename, "w:utf-8") do |f|
      partials.each do |partial|
        if !locale.empty? && File.exist?(File.join("_partials/#{locale}", "#{partial}.md"))
          partial_content = File.read(File.join("_partials/#{locale}", "#{partial}.md"), encoding: "utf-8")
        else
          partial_content = File.read(File.join("_partials", "#{partial}.md"), encoding: "utf-8")
        end
        PLACEHOLDERS.each do |placeholder, value|
          partial_content.gsub!("<#{placeholder}>", value)
        end
        partial_content.gsub!("<OS.md>", filename)
        f << partial_content
        f << "\n\n"
      end
    end
  end
end
