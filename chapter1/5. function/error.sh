function test1() {
    return 1
}
function test2() {
    return 0
}

if test1 ; then
  echo "test1 success"
fi

if test2 ; then
  echo "test2 success"
fi