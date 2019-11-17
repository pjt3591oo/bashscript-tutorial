function test() {
    echo "welcome $1 $2~"
    echo "$*"
    echo "$@"
    echo "$#"
}

test "pjt" "mung1" "27" 

echo 

for var1 in $*
do
    echo "$var1"
done
echo
for var2 in $@
do
    echo "$var2"
done