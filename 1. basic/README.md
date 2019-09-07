# basic

* 변수(**`variable.sh`**)

```bash
var1="hello"     # 옳바른 표기
var2 = "world"   # 옳바르지 않은표기
```

쉘 스크립트에서는 변수를 선언한때 띄어쓰기를 허용하지 않는다.

```bash
echo "$var1"
echo "${var2}!"
```

문자열 내부에서 변수를 사용할 땐 $나 $()를 붙여 변수임을 알려준다.

* 조건문(**`condition.sh`**)

```bash
string="hello"

if [[ -z "$string" ]]; then # 값이 비었는지 검사
  echo "String is empty"
elif [[ -n "$string" ]]; then # 값이 안 비었는지 검사
  echo "String is not empty"
fi
```

쉘 스크립트에서 조건문에서는 -z, -n과 같이 옵션 형태로 검사할 수 있다.

* 함수(**`function.sh`**)

```bash
test () {
  echo "test"
}

test
```

* 반복문(**`loop.sh`**)

```bash
start=0
end=20
for ((i = $start ; i < $end ; i++)); do
  echo $i
done
```