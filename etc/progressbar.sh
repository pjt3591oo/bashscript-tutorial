
####################################
# params
#    $1 ticks: 총 틱 갯수     (default 10)
#    $2 delay: 한 틱당 소요시간 (default 0.3)
####################################
progress() {
  local ticks=$1 
  local delay=$2 
  
  local default_ticks=10
  local default_delay=0.3

  if [[ -z "$ticks" ]]; then
    ticks=$default_ticks
  fi
  
  if [[ -z "$delay" ]]; then
    delay=$default_delay
  fi

  for ((i = 1 ; i <= $ticks ; i++)); do
    local w=80 p=$i;  shift
    printf -v dots "%*s" "$(( $p*$w/$ticks ))" ""; dots=${dots// /.};
    printf "\r\e[K|%-*s| %3d(s) / %s(s) %s" "$w" "$dots" "$p" "$ticks" "still working..."; 
    sleep $delay   
  done ; echo
}

progress

progress 10 0.1

progress 20 0.4