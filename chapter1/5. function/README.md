* 함수정의 (**`define.sh`**)

```bash
test1() {
    echo "welcome $1 ~"
}

function test2() {
    echo "welcome $1 ~"
}

test1 "pjt"
test2 "pjt"
```

`function` 키워드를 써도 되고, 안 써도 된다.

* 함수저장 (**`return.sh`**)

```bash
myfunc() {
    local myresult='some value'
    echo $myresult
}
result="$(myfunc)"

echo $result
echo $result
echo $result
echo $result
echo $result
echo $result
```

shell script에서 리턴은 값의 반환의 의미도 있지만 함수 자체를 변수에 저장하는것을 의미한다.

javascript에서 변수에 함수를 담는것과 비슷한 개념이다.

```js
const getData = function(id) {
  return data[id]
}

getData(1)
getData(2)
getData(3)
```

* 전달인자 (**`argument.sh`**)

```bash
function test() {
    echo "welcome $1 $2~"
    echo "$*"
    echo "$@"
    echo "$#"
}

test "pjt" "mung1" "27" 
```

`$숫자` 함수 호출시 전달 인자를 순서대로 가져오는 역할을 한다. 이 경우 $0은 해당 파일 이름이 된다.

`$*`는 `$1`부터 마지막 전달 인자를 모두 가져오는 역할을 한다.

`$@`는 `$*`과 동일하다.

`$#`은 전달 인자의 갯수를 의미

여기서 `$*`와 `$@`의 차이점이 궁금할 수 있다. 쉘 스크립트를 실행할 때 다음과 같이 인자를 전달할 수 있는데. `$*`와 `$@`는 스크립트 실행시 전달하는 데이터를 가져오는 차이가 있다.



* 에러발생 (**`error.sh`**)

```bash
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
```

shell script는 `0`을 리턴하면 정상적으로 처리됬음을 알린다.