#!/bin/env bash
cd $1
BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
STATUS=$(git status --porcelain 2>/dev/null | egrep "^(M| M)" | wc -l)
if test "$BRANCH" != ""; then
  if test "$STATUS" = "0"; then
    echo "#[fg=#00FF00,bg=#24283B,nobold,noitalics,nounderscore] #[fg=black,bg=#00FF00,bold]   $BRANCH  "
  else
    echo "#[fg=#FF00FF,bg=#24283B,nobold,noitalics,nounderscore] #[fg=black,bg=#FF00FF,bold]   $BRANCH  "
  fi
fi
