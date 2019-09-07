set -x

search="\$\$[account]"
replace="0x123"

sed -i "s/${search}/${replace}/g" templete.txt