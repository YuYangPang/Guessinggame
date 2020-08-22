#!/usr/bin/env bash

function enternumber {
    echo "Welcome to guessing game!"
    echo "Enter a number to guess the number of files in the current directory: "
    read number
  files=$(ls -1)
}

enternumber

while [[ $ number -ne $files ]]
do
  if [[ $ number -gt $files ]]
  then
    echo "The number is too small, please try again: "
    read number
  elif [[ $ number -lt $files ]]
  then
    echo "The number is too large, please try again: "
    read number
  fi
done

echo "You are correct!"
echo "---" && ls -1
