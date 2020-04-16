#!/bin/sh
#SBATCH -n 1 # Number of cores
#SBATCH -N 1 # Ensure that all cores are on one machine
#SBATCH --mem=4000

module purge > /dev/null 2>&1
module load stata/14.0-fasrc01
make do   # Run Stata hello world.

module purge > /dev/null 2>&1
module load julia/1.1.1-fasrc01
make jl   # Run Julia hello world.

module purge > /dev/null 2>&1
module load matlab/R2018b-fasrc01
make m    # Run Matlab hello world.

module purge > /dev/null 2>&1
module load mathematica/11.3.0-fasrc01
make math # Run Mathematica hello world.

module purge > /dev/null 2>&1
module load python/3.6.3-fasrc02
make py   # Run Python 3.x hello world.

module purge > /dev/null 2>&1
module load python/2.7.14-fasrc02
make pyt  # Run Python 2.x hello world.

module purge > /dev/null 2>&1
module load gcc/7.1.0-fasrc01 R/3.5.0-fasrc01
module load intel/17.0.4-fasrc01 R/3.5.0-fasrc01
make r    # Run R hello world.

module purge > /dev/null 2>&1
module load sas/9.4-fasrc01
make sas  # Run Sas hello world.

module purge > /dev/null 2>&1
make sh       
