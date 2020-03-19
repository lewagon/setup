#!/usr/bin/env ruby -wU

MAC_OS = %w[intro osx_command_line_tools github homebrew osx_sublime_text osx_oh_my_zsh github_rsa dotfiles ssh_osx rbenv_osx rbenv_ruby osx_postgresql osx_security checkup alumni_platform osx_slack osx_preferences].freeze
UBUNTU = %w[intro github ubuntu_git ubuntu_sublime_text ubuntu_oh_my_zsh github_rsa dotfiles rbenv_ubuntu rbenv_ruby ubuntu_postgresql ubuntu_inotify ubuntu_extra checkup alumni_platform ubuntu_slack].freeze
WINDOWS_LINUX_SUBSYSTEM = %w[wls_disclaimer intro wls_prerequisites github wsl_git wls_sublime_text wsl_oh_my_zsh github_rsa wls_dotfiles rbenv_ubuntu rbenv_ruby wsl_browser_variable wls_postgresql checkup alumni_platform wls_slack].freeze
WINDOWS_LINUX_SUBSYSTEM2 = %w[wsl2_prerequisites intro wsl2_install_wsl wsl2_windows_terminal github].freeze
filenames = {
  'macOS.md' => MAC_OS,
  'UBUNTU.md' => UBUNTU,
  'WINDOWS_LINUX_SUBSYSTEM.md' => WINDOWS_LINUX_SUBSYSTEM,
  'WINDOWS_LINUX_SUBSYSTEM2.md' => WINDOWS_LINUX_SUBSYSTEM2
}

filenames.each do |filename, partials|
  File.open(filename.to_s, 'w:utf-8') do |f|
    partials.each do |partial|
      f << File.read(File.join('_partials', "#{partial}.md"), encoding: "utf-8")
      f << "\n\n"
    end
  end
end
