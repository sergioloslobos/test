#! /bin/bash

a=$(ls -l | head -n 100 | '{print $9}')

for i in $a;
do

  sed -i 's/nginx-01.com/ngnix-02.com/g' $i
  
done