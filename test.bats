#!/usr/bin/env bats

function setup() {
  cd /code
}

function print() {
  for line in "$@"; do
    echo $line
  done
}

@test 'test_hoge' {
  run ./test_hoge.sh
  print "${lines[@]}"
  [[ $status -eq 0 ]]
}