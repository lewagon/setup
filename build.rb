#!/usr/bin/env ruby -wU

SETUP_RUBY_VERSION = "2.7.3"

MACOS = %w[
  intro
  zoom
  github
  macos_apple_silicon
  macos_command_line_tools
  macos_homebrew
  macos_vscode
  vscode_extensions
  vscode_liveshare
  macos_terminal
  oh_my_zsh
  gh_cli
  ssh_key
  dotfiles
  macos_rbenv
  ruby
  nvm
  yarn
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
  git
  zsh
  oh_my_zsh
  windows_browser
  gh_cli
  ssh_key
  dotfiles
  windows_ssh
  rbenv
  ruby
  nvm
  yarn
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
  git
  zsh
  oh_my_zsh
  gh_cli
  ssh_key
  dotfiles
  rbenv
  ruby
  nvm
  yarn
  ubuntu_postgresql
  checkup
  kitt
  ubuntu_slack
  slack_settings
  ubuntu_settings
  conclusion].freeze

filenames = {
  'macos.md' => MACOS,
  'windows.md' => WINDOWS,
  'ubuntu.md' => UBUNTU
}

["", "cn"].each do |locale|
  filenames.each do |filename, partials|
    filename = "#{filename.split('.md').first}.#{locale}.md" unless locale.empty?
    File.open(filename, 'w:utf-8') do |f|
      partials.each do |partial|
        folder = locale.empty? ? "_partials" : "_partials/#{locale}"
        f << File.read(File.join(folder, "#{partial}.md"), encoding: "utf-8").gsub("<RUBY_VERSION>", SETUP_RUBY_VERSION)
        f << "\n\n"
      end
    end
  end
end
