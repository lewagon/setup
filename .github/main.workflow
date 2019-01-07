workflow "Build" {
  on = "push"
  resolves = ["Run"]
}

action "Run" {
  uses = "docker://ruby:2.5"
  args = "ruby build.rb"
}
