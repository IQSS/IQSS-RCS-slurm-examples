#!/bin/bash
export PATH=/nfs/tools/apps/mathematica/12.0/bin:${PATH}
/usr/bin/env math -noprompt -run "<< hello.math"
