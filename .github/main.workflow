workflow "New workflow" {
  on = "push"
  resolves = [
    "check",
    "Sleep2",
  ]
}

action "Sleep 1" {
  uses = "actions/bin/sh@master"
  args = "sleep --help"
}

action "check" {
  uses = "actions/bin/sh@master"
  needs = ["Sleep 1"]
  args = "cat poyo.txt"
}

action "Sleep2" {
  uses = "actions/bin/sh@master"
  args = "sleep --help"
}
