#!/bin/bash
/usr/bin/env matlab -nojvm -batch 'try, run("/nfs/home/E/esarmien/projects/hpchellos/hello.m"), catch, exit(1), end, exit(0)' 
