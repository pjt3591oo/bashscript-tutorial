string="hello"

if [[ -z "$string" ]]; then # 값이 비었는지 검사
  echo "String is empty"
elif [[ -n "$string" ]]; then # 값이 안 비었는지 검사
  echo "String is not empty"
fi