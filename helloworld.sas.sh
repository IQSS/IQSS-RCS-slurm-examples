#!/bin/bash
/usr/bin/env sas -sysin helloworld.sas -nonews -nonotes -nosource -nocpuid
cat helloworld.log
rm helloworld.log
