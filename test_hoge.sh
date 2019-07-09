#!/usr/bin/env bash
cd $(dirname $0)

source ./hoge.sh

declare -i a=0
hoge

if [[ a -eq 1 ]]; then
  exit 0
else
  echo "a=$a"
  exit 1
fi