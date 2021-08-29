#!/bin/bash

git status --porcelain
if [[ -z "$(git status --porcelain)" ]];
  then
    echo "No changes found"
    echo ::set-output name=git-changes::0
  else
    echo "Changes found"
    echo ::set-output name=git-changes::1
fi