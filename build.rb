#!/usr/bin/env ruby -wU

OSX = %w(intro github osx_command_line_tools osx_sublime_text osx_sublime_text_package_control sublime_text_preferences homebrew  osx_oh_my_zsh github_rsa dotfiles rbenv rbenv_ruby osx_security checkup alumni_platform osx_slack)
UBUNTU = %w(intro ubuntu_virtualbox github ubuntu_sublime_text ubuntu_sublime_text_package_control sublime_text_preferences ubuntu_git ubuntu_oh_my_zsh github_rsa dotfiles rbenv rbenv_ubuntu rbenv_ruby checkup alumni_platform)

{ 'OSX.md': OSX, 'UBUNTU.md': UBUNTU }.each do |filename, partials|
  File.open(filename.to_s, 'w') do |f|
    partials.each do |partial|
      f << File.read(File.join('_partials', "#{partial}.md"))
      f << "\n\n"
    end
  end
end
