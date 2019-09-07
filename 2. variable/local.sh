test=20

local_test_func () {
  local test=10
  echo $test
}

global_test_func () {
  test=10
  echo $test
}

echo "before local used: $test"
local_test_func
echo "after local used: $test"

echo

echo "before local not used: $test"
global_test_func
echo "after local not used: $test"