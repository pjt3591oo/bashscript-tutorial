# case 1
ssh -i 인증서.pem 계정@아이피 << EOF
  # 접속된 서버에서 실행할 스크립트
  cd ~/
  mkdir tt
EOF


# case 2
IP_LIST=("10.10.10.1" "10.10.10.2" "10.10.10.3" "10.10.10.4" "10.10.10.5")
 
for VALUE in "${IP_LIST[@]}"; do
    ssh -p 22 centos@$VALUE <<EOF
    sh < /temp.sh
EOF
done

# case 3
IP_LIST=("10.10.10.1" "10.10.10.2" "10.10.10.3" "10.10.10.4" "10.10.10.5")
 
for VALUE in "${IP_LIST[@]}"; do
    ssh -p 22 centos@$VALUE <<EOF
    nohup sh < /temp.sh >> '/temp.log' &
EOF
done

