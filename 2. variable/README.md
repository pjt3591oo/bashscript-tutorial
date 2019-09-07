* 변수(**`variable.sh`**)

```bash
echo $PWD
echo "PWD: $PWD"

echo $HOME
echo "HOME: $HOME"

echo $PATH
echo "PATH: $PATH"
```

쉘 스크립트는 선언된 변수 뿐 아니라 이미 저장된 환경변수 값을 가져올 수 있다.

* 지역변수(**`local.sh`**)

```bash
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
```

쉘 스크립트는 변수선언 시 기본적으로 지역변수의 성격을 가진다. 하지만 특정 함수에서만 지역변수 형태로 쓰고 싶다면 **`local`** 키워드를 이용한다.


```
before local used: 20
10
after local used: 20

before local not used: 20
10
after local not used: 10
```

`global_test_func`을 호출하면 global 변수인 test가 변경된다. `local` 키워드를 사용하면 `local` 키워드가 있는 지역의 지연변수로 생성한다.

* 배열(**`array.sh`**)

```bash
array=(1 2 3 4 5)

echo ${array[0]}
echo ${array[1]}
echo ${array[2]}
echo ${array[3]}
echo ${array[4]}

echo ${array[@]} # 전체출력

unset array[2]   # 특정요소 지우기
echo ${array[@]} # 전체출력

unset array      # 전체 지우기
echo ${array[@]} # 전체출력
```

`array`으로 배열 선언이 가능하며 `unset`은 특정 요소및 배열을 지울 수 있다. 

* 예약어 및 환경변수

```
HOME	사용자의 홈 디렉토리
PATH	실행 파일을 찾을 경로
LANG	프로그램 사용시 기본 지원되는 언어
PWD	사용자의 현재 작업중인 디렉토리
FUNCNAME	현재 함수 이름
SECONDS	스크립트가 실행된 초 단위 시간
SHLVL	쉘 레벨(중첩된 깊이를 나타냄)
SHELL	로그인해서 사용하는 쉘
PPID	부모 프로세스의 PID
BASH	BASH 실행 파일 경로
BASH_ENV	스크립트 실행시 BASH 시작 파일을 읽을 위치 변수
BASH_VERSION	설치된 BASH 버전
BASH_VERSINFO	BASH_VERSINFO[0]~BASH_VERSINFO[5]배열로 상세정보 제공
MAIL	메일 보관 경로
MAILCHECK	메일 확인 시간
OSTYPE	운영체제 종류
TERM	로긴 터미널 타입
HOSTNAME	호스트 이름
HOSTTYPE	시스템 하드웨어 종류
MACHTYPE	머신 종류(HOSTTYPE과 같은 정보지만 조금더 상세하게 표시됨)
LOGNAME	로그인 이름
UID	사용자 UID
EUID	su 명령에서 사용하는 사용자의 유효 아이디 값(UID와 EUID 값은 다를 수 있음)
USER	사용자의 이름
USERNAME	사용자 이름
GROUPS	사용자 그룹(/etc/passwd 값을 출력)
HISTFILE	history 파일 경로
HISTFILESIZE	history 파일 크기
HISTSIZE	history 저장되는 개수
HISTCONTROL	중복되는 명령에 대한 기록 유무
DISPLAY	X 디스플레이 이름
IFS	입력 필드 구분자(기본값:   - 빈칸)
VISUAL	VISUAL 편집기 이름
EDITOR	기본 편집기 이름
COLUMNS	현재 터미널이나 윈도우 터미널의 컬럼 수
LINES	터미널의 라인 수
LS_COLORS	ls 명령의 색상 관련 옵션
PS1	기본 프롬프트 변수(기본값: bash\$)
PS2	보조 프롬프트 변수(기본값: >), 명령을 "\"를 사용하여 명령 행을 연장시 사용됨
PS3	쉘 스크립트에서 select 사용시 프롬프트 변수(기본값: #?)
PS4	쉘 스크립트 디버깅 모드의 프롬프트 변수(기본값: +)
TMOUT	0이면 제한이 없으며 time시간 지정시 지정한 시간 이후 로그아웃
```

* 파라미터 위치변수

```
$0	실행된 스크립트 이름
$1	$1 $2 $3...${10}인자 순서대로 번호가 부여된다. 10번째부터는 "{}"감싸줘야 함
$*	전체 인자 값
$@	전체 인자 값($* 동일하지만 쌍따옴표로 변수를 감싸면 다른 결과 나옴)
$#	매개 변수의 총 개수
```

* 특수변수

```
$$	현재 스크립트의 PID
$?	최근에 실행된 명령어, 함수, 스크립트 자식의 종료 상태
$!	최근에 실행한 백그라운드(비동기) 명령의 PID
$-	현재 옵션 플래그
$_	지난 명령의 마지막 인자로 설정된 특수 변수
```