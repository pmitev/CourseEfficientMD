#!/bin/bash
#SBATCH -A Project_ID
#Asking for 10 min.
#SBATCH -t 00:50:00
#Number of nodes
#SBATCH -N 1
#Ask for 28 processes
#SBATCH -n 28
#SBATCH --output=job_o.out
#SBATCH --error=job_o.err

ml gaussian/09.e.01-AVX
ml GCC/7.3.0-2.30  OpenMPI/3.1.1
ml Python/2.7.15
ml NAMD/2.13-mpi

mpirun -np 28 namd2 4ake_eq_qmmm.conf > logfile_qmmm.txt
