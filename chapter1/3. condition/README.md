* if문 (**`if.sh`**)

```bash
str="hello"

if [[ -z "$str" ]]; then
  echo "empty"
elif [[ -n "$str" ]]; then
  echo "not empty"
fi
```

-z 값이 비었는지 검사. 값이 비었다면 `true`, 아니면 `false`
-n 값이 있는지 검사. 값이 있다면 `true`, 아니면 `false` 

* 파일 존재유무 (**`exist.sh`**)

```bash
file1="file.txt"
file2="test.txt"

if [[ -e $file1 ]]; then
  echo "$file1 exists"
fi

if [[ -e $file2 ]]; then
  echo "$file2 exists"
fi
```

-e 파일이 존재하면 `true`, 아니면 `false`

* 값 비교 (**`compare.sh`**)

```bash
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
```

<, >의 형태와 -lt, -gt의 형태로 작성 가능. 

단, <, >을 쓸 땐 (())을 사용 -lt, -gt 옵션 형태로 사용할 땐 [[]] 사용

* 비교조건

```
[[ -z STRING ]]	Empty string
[[ -n STRING ]]	Not empty string
[[ STRING == STRING ]]	Equal
[[ STRING != STRING ]]	Not Equal
[[ NUM -eq NUM ]]	Equal
[[ NUM -ne NUM ]]	Not equal
[[ NUM -lt NUM ]]	Less than
[[ NUM -le NUM ]]	Less than or equal
[[ NUM -gt NUM ]]	Greater than
[[ NUM -ge NUM ]]	Greater than or equal
[[ STRING =~ STRING ]]	Regexp
(( NUM < NUM ))	Numeric conditions
[[ -o noclobber ]]	If OPTIONNAME is enabled
[[ ! EXPR ]]	Not
[[ X ]] && [[ Y ]]	And
[[ X ]] || [[ Y ]]	Or
```

* 파일조건

```
[[ -e FILE ]]	Exists
[[ -r FILE ]]	Readable
[[ -h FILE ]]	Symlink
[[ -d FILE ]]	Directory
[[ -w FILE ]]	Writable
[[ -s FILE ]]	Size is > 0 bytes
[[ -f FILE ]]	File
[[ -x FILE ]]	Executable
[[ FILE1 -nt FILE2 ]]	1 is more recent than 2
[[ FILE1 -ot FILE2 ]]	2 is more recent than 1
[[ FILE1 -ef FILE2 ]]	Same files
```