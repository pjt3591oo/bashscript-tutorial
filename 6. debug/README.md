| Bash 옵션(스크립트 실행 시) | set 옵션(스크립트 코드 삽입) | 설명 |
|---|:---:|---:|
| bash -n | set -n, set -o noexec | 스크립트 실행없이 단순 문법 오류만 검사(찾지 못하는 문법  |
| bash -v | set -v, set -o verbose | 명령어 실행전 해당 명령어 출력(echo) |
| bash -x | 	set -x, set -o xtrace | 명령어 실행후 해당 명령어 출력(echo) |
| |set -o nounset | 미선언된 변수 발견시 "unbound variable" 메시지 출력 |