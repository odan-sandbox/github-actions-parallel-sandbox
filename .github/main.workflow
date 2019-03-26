workflow "New workflow" {
  on = "push"
  resolves = [
    "check",
  ]
}

action "Sleep 1" {
  uses = "actions/bin/sh@master"
  args = ["sleep 1", "echo 1 > poyo.txt"]
}

action "Sleep 2" {
  uses = "actions/bin/sh@master"
  args = ["sleep 2", "echo 2 > poyo.txt"]
}

action "Sleep 3" {
  uses = "actions/bin/sh@master"
  args = ["sleep 3", "echo 3 > poyo.txt"]
}

action "check" {
  uses = "actions/bin/sh@master"
  needs = ["Sleep 1", "Sleep 2", "Sleep 3"]
  args = ["cat poyo.txt"]
}
