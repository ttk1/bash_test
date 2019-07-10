#!/usr/bin/env bats
set -eu
set -o pipefail

load test_helper

@test 'test_hoge' {
  source ./hoge.sh
  declare -i a=0
  hoge
  [[ $a -eq 1 ]]
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