# Author: Pradeep Ravichandran
#! /bin/bash

echo "Default Gateway:"
gateway= netstat -rnv | head -3 | tail -1 | awk '{print $2}'

echo "Interface:"
interface= netstat -rnv | head -3 | tail -1 | awk '{print $8}'
