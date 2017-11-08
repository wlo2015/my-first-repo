#!usr/bin/env bash
# File: guessinggame.sh


function guess {

  if [[ $1 = $(ls -al | grep ^- | wc -l) ]]
  then
    bingo=true
  else
    bingo=false
  fi
#  echo $bingo
}

num=0
bingo=false

while !($bingo)
do
  echo "Please guess the number of files in this directory.: "
  read num
  guess $num
  if $bingo
  then
    echo "Congratulation!!!"
  fi
done
