#!/bin/bash

for dir in `ls bundle/`
do
  if [ -d "bundle/$dir" ]; then
    echo ""
    echo "Update bundle/$dir"
    cd "bundle/$dir"
    git checkout master
    git pull
    cd ../..
    echo ""
  fi
done
