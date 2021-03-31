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
  macos_oh_my_zsh
  github_rsa
  gh_cli
  dotfiles
  macos_ssh
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
  wsl2_vscode_settings
  wsl2_windows_terminal
  wsl2_git
  wsl2_oh_my_zsh
  github_rsa
  wsl_browser_variable
  gh_cli
  wsl2_dotfiles
  rbenv_ubuntu
  rbenv_ruby
  nvm
  yarn
  wls_postgresql
  checkup
  wsl_explorer
  alumni_platform
  wls_slack].freeze

LINUX = %w[
  intro
  zoom
  github
  ubuntu_git
  ubuntu_sublime_text
  ubuntu_oh_my_zsh
  github_rsa
  gh_cli
  dotfiles
  rbenv_ubuntu
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
  'LINUX.md' => LINUX
}

filenames.each do |filename, partials|
  File.open(filename.to_s, 'w:utf-8') do |f|
    partials.each do |partial|
      f << File.read(File.join('_partials', "#{partial}.md"), encoding: "utf-8").gsub("<RUBY_VERSION>", SETUP_RUBY_VERSION)
      f << "\n\n"
    end
  end
end
