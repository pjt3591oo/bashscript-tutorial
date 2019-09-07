str="hello"

if [[ -z "$str" ]]; then
  echo "empty"
elif [[ -n "$str" ]]; then
  echo "not empty"
fi