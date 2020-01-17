#!/usr/bin/env bash
. "$(cd $(dirname $0); pwd)/IsInt.sh"
assert() {
	let ++TEST_NUM
	local expected=$1
	local actual=$2
	[ "$expected" != "$actual" ] && { echo "Failed test... LINENO=$BASH_LINENO TEST_NUM=$TEST_NUM expected='${expected}', actual='${actual}'"; exit 1; }
}
init() { TEST_NUM=0; }
fin() { echo "Cleared all test. $TEST_NUM"; }
init

assert "1" "$(IsInt 0 && echo '1' || echo '0')"
assert "1" "$(IsInt 1 && echo '1' || echo '0')"
assert "1" "$(IsInt 2 && echo '1' || echo '0')"
assert "1" "$(IsInt 9223372036854775807 && echo '1' || echo '0')"
assert "1" "$(IsInt -1 && echo '1' || echo '0')"
assert "1" "$(IsInt -2 && echo '1' || echo '0')"
assert "1" "$(IsInt -9223372036854775808 && echo '1' || echo '0')"

assert "0" "$(IsInt && echo '1' || echo '0')"
assert "0" "$(IsInt A && echo '1' || echo '0')"
assert "0" "$(IsInt 0.5 && echo '1' || echo '0')"
assert "0" "$(IsInt 1/2 && echo '1' || echo '0')"
assert "0" "$(IsInt 1.1e+12 && echo '1' || echo '0')"
assert "0" "$(IsInt 1.1e-12 && echo '1' || echo '0')"
assert "0" "$(IsInt 9223372036854775808 && echo '1' || echo '0')"
assert "0" "$(IsInt -9223372036854775809 && echo '1' || echo '0')"

fin
