# system info

## 시스템 정보

```bash
echo '===== kernel name ====='
# set -x
uname -s

echo '\n===== sernel release ====='
# set -x 
uname -r

echo '\n===== network node hostname ====='
uname -n

echo '\n===== machine hardware architecture ====='
uname -m

echo '\n===== all information of uname command'
uname -a
```

## 리소스 정보

```bash
echo && echo ———————-System Information:——————— && 
/bin/echo -n "Uptime: " && uptime | awk '{print $3}'
echo
/bin/echo -n "CPU Usage: "  && top -l 1 | awk '/CPU usage/ {print $3}' 
echo
/bin/echo -n "Hard Drive Space Available: "  && df -h | grep -E "disk1" | awk '{print $4}'
/bin/echo -n "Hard Drive Usage: "  && df -h | grep -E "disk1" | awk '{print $5}' 
echo
/bin/echo -n "Memory Used: " && top -l 1 -s 0 | grep PhysMem | awk $'{print $2}'
/bin/echo -n "Memory Free: " && top -l 1 -s 0 | grep PhysMem | awk $'{print $6}'
echo
/bin/echo -n "Internal IP Address: " && ipconfig getifaddr en0
/bin/echo -n "External IP Address: " &&  curl -s icanhazip.com
/bin/echo -n "Traffic Out: " && top -l 1 -s 0 | grep Networks | awk ' {print $3}' FS=/ | awk '{print $1}'
/bin/echo -n "Traffic In: " && top -l 1 -s 0 | grep Networks | awk ' {print $2}' FS=/ | awk '{print $1}'


echo && echo —————————Top Processes:—-————————- && 
ps -arcwwwxo "command pid %cpu %mem" | head -11
echo
```