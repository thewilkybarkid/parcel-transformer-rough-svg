#!/usr/bin/env bats

setup() {
  load 'setup'
  run-setup
}

roughen-svgs() { # @test
  run npm --workspace test/project run build

  assert_line --index 7 --regexp 'dist/circle\.[a-z0-9]{8}\.svg[[:space:]]+[1-9][0-9]*[[:space:]]*B'
  assert_line --index 8 --regexp 'dist/circle\.[a-z0-9]{8}\.svg[[:space:]]+[1-9][0-9]*(\.[0-9]{1,2})?[[:space:]]*KB'
  assert_line --index 9 --regexp 'dist/squares\.[a-z0-9]{8}\.svg[[:space:]]+[1-9][0-9]*[[:space:]]*B'
  assert_line --index 10 --regexp 'dist/squares\.[a-z0-9]{8}\.svg[[:space:]]+[1-9][0-9]*(\.[0-9]{1,2})?[[:space:]]*KB'
}
