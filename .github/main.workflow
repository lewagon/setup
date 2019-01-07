workflow "Build" {
  on = "push"
  resolves = ["Run"]
}

action "Run" {
  uses = "Run"
}
