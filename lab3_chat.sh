#!/bin/bash

touch data.txt
openssl enc -aes-256-cbc -md sha512 -pbkdf2 -iter 100000 -salt -in data.txt -out data.enc -k PASS
rm -f data.txt
  
echo "your pid is $$"
echo "enter the second pid"
read pid

trap 'cat "data.txt"' 10


while true
do  
  read a
  openssl enc -aes-256-cbc -md sha512 -pbkdf2 -iter 100000 -salt -d -in data.enc -out data.txt -k PASS
  echo "$a" > data.txt
  kill -10 $pid
  rm -f data.txt
done
