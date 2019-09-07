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
