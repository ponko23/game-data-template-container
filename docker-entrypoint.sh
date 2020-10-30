#!/bin/bash
 
FILE="/app/web/package.json"
if [ -e $FILE ]; then
  web/yarn
fi

/bin/bash