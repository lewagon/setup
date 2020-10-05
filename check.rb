require 'io/console'
begin
  require "colored"
  require "http"
rescue LoadError
  puts "Could not find all needed gems. Please run `gem install colored http` and retry"
  exit
end

require "json"
require "open-uri"

REQUIRED_RUBY_VERSION = "2.6.6"
REQUIRED_GIT_VERSION = "2.0"
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
  check("git/Github email matching") do
    git_email = (`git config --global user.email`).chomp
    puts "Please go to https://github.com/settings/emails and make sure that"
    puts "the following email is listed on that page:"
    puts "👉  #{git_email}"
    print "Is that the case? (y/n + <Enter>)\n> "
    response = gets.chomp
    ok = response.downcase.include?("y")
    [ ok, ok ? "git email is included in Github emails" : "Add #{git_email} to your GitHub account or update your git global settings" ]
  end
  check("GitHub profile picture") do
    groups = `ssh -T git@github.com 2>&1`.match(/Hi (?<nickname>.*)! You've successfully authenticated/)
    nickname = groups["nickname"]
    puts "Your username on GitHub is #{nickname}, checking your profile picture now..."
    avatar_url = JSON.parse(HTTP.get("https://api.github.com/users/#{nickname}"))['avatar_url']
    content_length = `curl -s -I #{avatar_url} | grep 'Content-Length:'`.strip.gsub("Content-Length: ", "").to_i
    if content_length >= MINIMUM_AVATAR_SIZE
      [ true, "Thanks for uploading a GitHub profile picture 📸"]
    else
      [ false, "You don't have any profile picture set.\nIt's important, go to github.com/settings/profile and upload a picture *right now*."]
    end
  end
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
    puts "🚀  Awesome! Your laptop is now ready for weeks of hard work :)".green
    puts "Now it's time to onboard on the Alumni platform 👉  kitt.lewagon.com/onboarding"
  else
    puts ""
    puts "😥  Bummer! Something's wrong, if you're stuck, ask a teacher.".red
  end
end

check_all
outro
