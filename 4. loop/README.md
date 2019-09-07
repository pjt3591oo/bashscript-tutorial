* 반복문

shell script는 반복문을 만들기 위해 `while`, `for` 이용

* 파일 리스트 읽기 (**`file_list_read.sh`**)

```bash
for i in ./test/*; do
  echo $i
done
```

쉘 스크립트는 디렉터리를 반복자에 전달하면 해당 디렉터리에 존재하는 파일, 디렉터리를 요소로 가짐

* 파일 읽기 (**`read_file.sh`**)

```bash
cat ./test/1.txt | while read line; do
  echo $line
done
```

파일을 읽는 명령어인 `cat`과 `while`을 이용하여 파일읽기

* c 스타일로 반복문 작성

```bash
for ((i = 0 ; i < 10 ; i++)); do
  echo $i
done

echo 

start=10
end=15

for ((i = $start ; i < $end ; i++)); do
  echo $i
done
```

c 스타일로 반복문을 생성할 경우 변수에 의해서 호출할 수 있다.

* range (**`range.sh`**)

```bash
for i in {1..5}; do
    echo "Welcome $i"
done
```

