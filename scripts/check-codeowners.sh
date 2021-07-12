#!/usr/bin/env bash

for DIR in $(ls -1 -d ./charts/*)
do
  FILE="$DIR/Chart.yaml"
  DIR=$(echo $DIR | sed 's/^\.//')
  MAINTAINERS=$(yq e '.maintainers.[].name' $FILE| sed 's/^/@/' | sort --ignore-case)
  echo $DIR/ $MAINTAINERS
done
