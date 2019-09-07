| Bash 옵션(스크립트 실행 시) | set 옵션(스크립트 코드 삽입) | 설명 |
|---|:---:|---:|
| bash -n | set -n, set -o noexec | 스크립트 실행없이 단순 문법 오류만 검사(찾지 못하는 문법  |
| bash -v | set -v, set -o verbose | 명령어 실행전 해당 명령어 출력(echo) |
| bash -x | 	set -x, set -o xtrace | 명령어 실행후 해당 명령어 출력(echo) |
| |set -o nounset | 미선언된 변수 발견시 "unbound variable" 메시지 출력 |

* 디버깅

```bash
# set -n

set -x
set -o nounset 

echo "hello"
echo "world"

echo $a
```

set -옵션은 직접 바꿔가면서 실행하면 어떤 차이가 있는지 알 수 있다.

개인적으로, set -x와 set -o는 넣어주고 스크립트를 작성하는게 좋을 것 같다.