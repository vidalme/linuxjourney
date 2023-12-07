#!/bin/bash

# script for easy to upload repositorie of this application

# default value in case user does not provide a comment for the commit
COMMENT='default comment.Not ideal'

git add .

if [[ "${#}" == 0 ]]
then
  git commit -m "${COMMENT}"
  echo "######################################################"
  echo "######################################################"
  echo "I am sure you have a good reason to push code without a comment."
  echo "######################################################"
  echo "######################################################"
else
  git commit -m "${*}"
fi



git push
