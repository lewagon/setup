#!/usr/bin/env ruby -wU

SETUP_RUBY_VERSION = "2.6.6"

MACOS = %w[
  intro
  zoom
  macos_apple_silicon
  macos_command_line_tools
  github
  homebrew
  macos_vscode
  vscode_extensions
  macos_oh_my_zsh
  github_rsa
  gh_cli
  dotfiles
  macos_rbenv
  rbenv_ruby
  nvm
  yarn
  macos_postgresql
  macos_security
  checkup
  alumni_platform
  macos_slack
  macos_preferences].freeze

WINDOWS = %w[
  intro
  wsl2_prereq_intro
  wsl2_prereq_win10
  wsl2_prereq_win_version
  wsl2_prereq_virtualization
  github
  zoom
  wsl2_install_wsl
  wsl2_vscode
  vscode_extensions
  wsl2_windows_terminal
  wsl2_git
  wsl2_oh_my_zsh
  github_rsa
  wsl2_browser_variable
  gh_cli
  dotfiles
  wsl2_dotfiles
  ubuntu_rbenv
  rbenv_ruby
  nvm
  yarn
  wsl2_postgresql
  checkup
  wsl2_explorer
  alumni_platform
  wsl2_slack].freeze

UBUNTU = %w[
  intro
  zoom
  github
  ubuntu_git
  ubuntu_vscode
  vscode_extensions
  ubuntu_oh_my_zsh
  github_rsa
  gh_cli
  dotfiles
  ubuntu_rbenv
  rbenv_ruby
  nvm
  yarn
  ubuntu_postgresql
  ubuntu_inotify
  ubuntu_extra
  checkup
  alumni_platform
  ubuntu_slack].freeze

filenames = {
  'MACOS.md' => MACOS,
  'WINDOWS.md' => WINDOWS,
  'UBUNTU.md' => UBUNTU
}

filenames.each do |filename, partials|
  File.open(filename.to_s, 'w:utf-8') do |f|
    partials.each do |partial|
      f << File.read(File.join('_partials', "#{partial}.md"), encoding: "utf-8").gsub("<RUBY_VERSION>", SETUP_RUBY_VERSION)
      f << "\n\n"
    end
  end
end
