function parse(){
  lines=(`tail "$1"`)                 
  account=${lines[28]:1:40}
  echo $account
  rm $1
}

cnt=10

password_file="./password"
result_file="temp_account.log"

for ((i = 0 ; i < cnt ; ++i)); do
  geth --datadir $PWD account new  < $password_file >> $result_file
  parse $result_file
done;

