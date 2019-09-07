################################
# 템플릿 파일을 기반으로 문자열 치환후 새로운 파일을 생성한다
# params
#     - $1: 치환대상
#     - $2: 치환 값
#     - $3: 템플릿 파일 경로
#     - $4: 결과파일 경로
################################
function createFromTemplete(){
  
  local search=$1
  local replace=$2

  local ORIGIN_FILE_PATH=$3
  local RESULT_FILE_PATH=$4

  sed "s/${search}/${replace}/g" $ORIGIN_FILE_PATH > $RESULT_FILE_PATH
}


saerchs=("+ACCOUNT1" "+ACCOUNT2")
replaces=("0x123123", "0x234")

for i in "${!saerchs[@]}"; do 
  printf "$i " " ${saerchs[$i]}"
  createFromTemplete ${saerchs[$i]} ${replaces[$i]} "./templete_node.toml" "./node.toml"
done


createFromTemplete $saerchs $replaces "./templete_node.toml" "./node.toml"