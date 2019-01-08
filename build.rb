#!/usr/bin/env ruby -wU

MAC_OS = %w[intro osx_command_line_tools github homebrew osx_sublime_text osx_oh_my_zsh github_rsa dotfiles ssh_osx rbenv_osx rbenv_ruby osx_postgresql osx_security checkup alumni_platform osx_slack osx_preferences].freeze
UBUNTU = %w[intro github ubuntu_git ubuntu_sublime_text ubuntu_oh_my_zsh github_rsa dotfiles rbenv_ubuntu rbenv_ruby ubuntu_postgresql checkup alumni_platform ubuntu_slack].freeze
WINDOWS_LINUX_SUBSYSTEM = %w[wls_disclaimer intro wls_prerequisites github ubuntu_git wls_sublime_text wls_oh_my_zsh github_rsa wls_dotfiles rbenv_ubuntu rbenv_ruby wls_postgresql checkup alumni_platform wls_slack].freeze

filenames = {
  'macOS.md' => MAC_OS,
  'UBUNTU.md' => UBUNTU,
  'WINDOWS_LINUX_SUBSYSTEM.md' => WINDOWS_LINUX_SUBSYSTEM
}

filenames.each do |filename, partials|
  File.open(filename.to_s, 'w:utf-8') do |f|
    partials.each do |partial|
      f << File.read(File.join('_partials', "#{partial}.md"), encoding: "utf-8")
      f << "\n\n"
    end
  end
end
