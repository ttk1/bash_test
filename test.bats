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
  skip
  run ./test_hoge.sh
  print "${lines[@]}"
  [[ $status -eq 0 ]]
}

@test 'test_gcd' {
  source ./gcd_lcm.sh

  result=$(GCD 25 60)
  [[ $result -eq 5 ]]

  result=$(GCD 24 40)
  [[ $result -eq 8 ]]
}

@test 'test_lcm' {
  source ./gcd_lcm.sh

  result=$(LCM 25 60)
  [[ $result -eq 300 ]]

  result=$(LCM 24 40)
  [[ $result -eq 120 ]]
}