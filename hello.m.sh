#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
/usr/bin/env matlab -nojvm -batch 'try, run("'$SCRIPTPATH'/hello.m"), catch, exit(1), end, exit(0)' 
