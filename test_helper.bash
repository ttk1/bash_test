function print_lines() {
  for line in "${lines[@]}"; do
    echo $line
  done
}

function setup() {
  cd "$BATS_TEST_DIRNAME"
}

function teardown() {
  print_lines
}