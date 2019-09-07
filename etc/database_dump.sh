#!/bin/bash
echo on

MAX_COUNT=100
for ((i=0;i<=$MAX_COUNT;i++))
do
    echo "Running Import "$i
    mysql -u root --password=비밀번호 -D 데이터베이스 이름 < sql.sql
done
