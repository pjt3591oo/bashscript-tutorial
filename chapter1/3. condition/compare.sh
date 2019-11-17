a=1
b=2

if (( $a < $b )); then
   echo "$a is smaller than $b"
fi
if [[ $a -lt $b ]]; then
   echo "$a is smaller than $b"
fi

if (( $a > $b )); then
   echo "$b is smaller than $a"
fi
if [[ $a -gt $b ]]; then
   echo "$b is smaller than $a"
fi