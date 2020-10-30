#!/bin/bash
 
FILE="/app/app/package.json"
if [ -e $FILE ]; then
  app/yarn
fi

/bin/bash