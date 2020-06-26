#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DONE=$(/usr/bin/todo.sh lsa | grep work | grep "00 x" | grep "`date +%Y-%m-%d`")
DONE_COUNT=$(/usr/bin/todo.sh lsa | grep work | grep "00 x" | grep "`date +%Y-%m-%d`" | wc -l)
if [ "$DONE_COUNT" -gt 0 ]
then
  $DIR/add-time.sh $DIR/.env
fi
