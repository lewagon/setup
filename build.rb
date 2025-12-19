#!/usr/bin/env ruby -wU

PLACEHOLDERS = {
  'RUBY_SETUP_VERSION' => "3.3.5",
  'NVM_VERSION' => "0.39.1",
  'NODE_VERSION' => "20.17.0",
  'GEMS' => "colored faker http pry-byebug rake rails:7.1.3.4 rest-client rspec rubocop-performance sqlite3:1.7.3 activerecord:7.1.3.2 ruby-lsp"
}

MACOS = %w[
  intro
  github
  macos_command_line_tools
  macos_homebrew
  macos_vscode
  vscode_extensions
  vscode_aifeatures
  vscode_liveshare
  macos_terminal
  oh_my_zsh
  gh_cli
  dotfiles
  macos_rbenv
  ruby
  nvm
  yarn
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
  github
  windows_version
  windows_virtualization
  windows_wsl
  windows_ubuntu
  windows_vscode
  windows_terminal
  vscode_extensions
  vscode_aifeatures
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
  yarn
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
  github
  ubuntu_vscode
  vscode_extensions
  vscode_aifeatures
  vscode_liveshare
  cli_tools
  oh_my_zsh
  gh_cli
  dotfiles
  ssh_agent
  rbenv
  ruby
  nvm
  yarn
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

["", "cn", "es", "fr", "pt"].each do |locale|
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
