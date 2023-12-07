#!/bin/bash

# script for easy to upload repositorie of this application

# default value in case user does not provide a comment for the commit
COMMENT='update git without comment.'

git add .

if [[ "${#}" == 0 ]]
then
  git commit -m "${COMMENT}"
else
  git commit -m "${*}"
fi

git push
