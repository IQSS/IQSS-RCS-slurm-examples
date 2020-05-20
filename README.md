# IQSS-RCS-slurm-examples

This repository includes "Hello World" scripts to run IQSS statistics packages on a slurm cluster.

* Matlab
* Mathematica
* R
* Bash
* SAS
* Julia
* Python 3
* Python 2

This repository is still a work in progress.  Your mileage may vary.

* Scripts for submitting jobs to slurm can specify slurm settings starting at the beginning of the script.
* They must come after the initial shebang (!#) line if there is one.  
* The lines should begin with #SBATCH.
* #SBATCH settings should come before any comments or they may not work.

Typical #SBATCH lines include:
`#SBATCH -n 1 # Number of cores requested; default: 1`
`#SBATCH -N 1 # Ensure that all cores are on one machine; default: unset- causes poor performance`
#SBATCH -t 15 # Runtime in minutes; job killed after this amount of time; default: 10
#SBATCH -p serial_requeue # Partition to submit to; default: serial_requeue
#SBATCH --mem=4000 # 4GB; Memory shared across all cores in MB (see also –mem-per-cpu)
#SBATCH --open-mode=append; default: overwrite
#SBATCH -o %x_%j.out # Standard out goes to this file; default: slurm-JOBID.out
#SBATCH -e %x_%j.err # Standard err goes to this file; default: slurm-JOBID.err


* More info here: https://docs.rc.fas.harvard.edu/kb/quickstart-guide/#Run_a_batch_job8230
* And here: https://docs.rc.fas.harvard.edu/kb/running-jobs/
