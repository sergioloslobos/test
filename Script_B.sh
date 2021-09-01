#! /bin/bash

a=(1 2 3 4 5 6 7 8 9 10)

for NUM in ${a[@]}

do

touch "random_test_${NUM}.txt"
echo "$(cat /dev/urandom | tr -dc 'a-zA-z0-9' | head -c 1000)" > "random_test_$NUM.txt"

done