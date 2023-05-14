#!/bin/bash

# read value
VALUE=$(/bin/upsc {{UPSNAME}}@localhost $1 2>&1 | /bin/grep -v '^Init SSL')
# return vaue
echo ${VALUE}
