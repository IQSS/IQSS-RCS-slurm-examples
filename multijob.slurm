#!/bin/bash
#SBATCH -J tophat # A single job name for the array
#SBATCH -n 1 # Number of cores
#SBATCH -N 1 # All cores on one Node
#SBATCH -p serial_requeue # Partition
#SBATCH --mem 4000 # Memory request (4Gb)
#SBATCH -t 0-2:00 # Maximum execution time (D-HH:MM)
#SBATCH -o %x_%A_%a.out # Standard output
#SBATCH -e %x_%A_%a.err # Standard error
module load R
R < ~/IQSS-RCS-slurm-examples/f"${SLURM_ARRAY_TASK_ID}".dat
Then launch the batch process using the --array option to specify the indexes.
#sbatch --array=1-5 jobarray.slurm