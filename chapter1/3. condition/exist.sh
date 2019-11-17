file1="file.txt"
file2="test.txt"

if [[ -e $file1 ]]; then
  echo "$file1 exists"
fi

if [[ -e $file2 ]]; then
  echo "$file2 exists"
fi