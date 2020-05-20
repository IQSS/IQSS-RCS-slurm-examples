#!/bin/bash
#SBATCH -n 1 # Number of cores
#SBATCH -N 1 # Ensure that all cores are on one machine
#SBATCH -t 15 # Runtime in minutes
#SBATCH --mem=4000
#SBATCH -p serial_requeue # Partition to submit to
#SBATCH --open-mode=append
#SBATCH -o %x_%j.out # Standard out goes to this file
#SBATCH -e %x_%j.err # Standard err goes to this file
# Commands to run go on next lines:

SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
module load matlab/R2018b-fasrc01
# Run matlab hello world.
/usr/bin/env matlab -nojvm -batch 'try, run("'$SCRIPTPATH'/hello.m"), catch, exit(1), end, exit(0)' 

# To submit the job:
# sbatch hello.matlab.slurm

