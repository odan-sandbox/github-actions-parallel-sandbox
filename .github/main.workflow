workflow "New workflow" {
  on = "push"
  resolves = [
    "check",
    "Sleep2",
  ]
}

action "Sleep 1" {
  uses = "actions/bin/sh@master"
  args = ["sleep 1", "echo 1 > poyo.txt"]
}

action "check" {
  uses = "actions/bin/sh@master"
  needs = ["Sleep 1"]
  args = ["cat poyo.txt"]
}

action "Sleep2" {
  uses = "actions/bin/sh@master"
  args = ["sleep 2", "echo 2 > poyo.txt"]
}
