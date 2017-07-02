begin
  require "colored"
  require "gist"
rescue LoadError
  puts "Could not find all needed gems. Did you run the `gem install [...]` command from the setup after Ruby install?"
  exit
end

require "json"
require "open-uri"

REQUIRED_RUBY_VERSION = "2.3.4"
REQUIRED_GIT_VERSION = "2.0"
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
MINIMUM_AVATAR_SIZE = 2 * 1024

$all_good = true

def check(label, &block)
  puts "Checking #{label}..."
  result, message = yield
  $all_good = $all_good && result
  puts result ? "[OK] #{message}".green : "[KO] #{message}".red
end

def check_all
  check("shell") do
    if ENV["SHELL"].match(/zsh/)
      [ true, "Your default shell is zsh"]
    else
      [ false, "Your default shell is #{ENV["SHELL"]}, but should be zsh"]
    end
  end
  check("ruby version") do
    if RUBY_VERSION == REQUIRED_RUBY_VERSION
      [ true, "Your default ruby version is #{RUBY_VERSION}" ]
    else
      details = `type -a ruby`
      [ false, "Your default ruby version is #{RUBY_VERSION}, but should be #{REQUIRED_RUBY_VERSION}. Did you run `rbenv global #{REQUIRED_RUBY_VERSION}`?\n#{details}---" ]
    end
  end
  check("git version") do
    version_tokens = `git --version`.gsub("git version", "").strip.split(".").map(&:to_i)
    required_version_tokens = REQUIRED_GIT_VERSION.split(".").map(&:to_i)
    if version_tokens.first == required_version_tokens.first && version_tokens[1] >= required_version_tokens[1]
      [ true, "Your default git version is #{version_tokens.join(".")}"]
    else
      [ false, "Your default git version is outdated: #{version_tokens.join(".")}"]
    end
  end
  check("GitHub setup") do
    begin
      token = File.read("#{ENV['HOME']}/.gist")
      groups = `ssh -T git@github.com 2>&1`.match(/Hi (?<nickname>.*)! You've successfully authenticated/)
      git_email = (`git config --global user.email`).chomp

      if groups && (nickname = groups["nickname"])
        github_user = JSON.parse(open("https://api.github.com/users/#{nickname}?access_token=#{token}").read)
        if github_user["name"] != nickname && !github_user["name"].nil? || github_user["name"] != ""
          if github_user["email"] == git_email
            content_length = `curl -s -I #{github_user["avatar_url"]} | grep 'Content-Length:'`.strip.gsub("Content-Length: ", "").to_i
            if content_length >= MINIMUM_AVATAR_SIZE
              [ true, "Seems ok. Your GitHub username is #{nickname} and you have a profile picture"]
            else
              [ false, "Your GitHub username appears to be #{nickname} (correct?), but you don't have any profile picture set.\nIt's important, go to github.com/settings/profile and upload a picture right now."]
            end
          else
            [ false, "Your GitHub email is '#{github_user["email"]}' whereas your git email is '#{git_email}'. Please run\n\n  git config --global user.email #{github_user["email"]}"]
          end
        else
          [ false, "Please specify your first and last name on your GitHub account -> https://github.com/settings/profile"]
        end
      else
        [ false, "Could not authenticate against GitHub. Check your SSH keys configuration."]
      end
    rescue Errno::ENOENT
      [ false, "Did you install the `gist` gem and run `gist --login`?"]
    end
  end
  # check("git email setup") do
  #   email = `git config --global user.email`.strip
  #   if email && email.match(VALID_EMAIL_REGEX)
  #     [ true, "Please manually check that `#{email}` is set at https://github.com/settings/emails - Did you confirm it?" ]
  #   else
  #     [ false, "Could not find an email in your git setup. Check your dotfiles"]
  #   end
  # end
  check("git editor setup") do
    editor = `git config --global core.editor`
    if editor.match(/subl/i)
      [ true, "Sublime Text is your default git editor"]
    else
      [ false, "Ask a teacher to check your ~/.gitconfig editor setup. Right now, it's `#{editor.chomp}`"]
    end
  end
  check("ruby gems") do
    if (`which rspec`) != "" && (`which rubocop`) != ""
      [ true, "Everything's fine"]
    else
      [ false, "Rspec and Rubocop gems aren't there. Did you run the `gem install ...` command?"]
    end
  end
end

def outro
  if $all_good
    puts ""
    puts "🚀  Awesome! Your laptop is now ready for 9 weeks of hard work :)".green
    puts "Now it's time to onboard on the Alumni platform 👉  alumni.lewagon.org/onboarding"
  else
    puts ""
    puts "😥  Bummer! Something's wrong, if you're stuck, ask a teacher.".red
  end
end

check_all
outro
