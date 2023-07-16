#! /usr/bin/env bats
setup() {
	cd "$(dirname "$BATS_TEST_FILENAME")/.." || exit
	. test/setup.sh
}

@test test {
	run bin/$ echo 1
	assert_output 1
}
