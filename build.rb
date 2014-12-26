#!/usr/bin/env ruby -wU

OSX = %w(intro github osx_command_line_tools osx_sublime_text sublime_text_preferences homebrew  osx_oh_my_zsh github_rsa dotfiles rbenv rbenv_ruby osx_security)
UBUNTU = %w(intro ubuntu_virtualbox github ubuntu_sublime_text sublime_text_preferences ubuntu_git ubuntu_oh_my_zsh github_rsa dotfiles rbenv rbenv_ubuntu rbenv_ruby)

{ 'OSX.md': OSX, 'UBUNTU.md': UBUNTU }.each do |filename, partials|
  File.open(filename.to_s, 'w') do |f|
    partials.each do |partial|
      f << File.read(File.join('_partials', "#{partial}.md"))
      f << "\n\n"
    end
  end
end
