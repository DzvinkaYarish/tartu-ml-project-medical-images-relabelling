#!/bin/bash

#SBATCH -J deeplesion_preprocess
#SBATCH --partition=main
#SBATCH -t 1:00:00
#SBATCH --cpus-per-task=1
#SBATCH --mem=10G

module load python/3.8.6

source /gpfs/space/home/fordui/ml_project/.venv/bin/activate
python /gpfs/space/home/fordui/ml_project/preprocess_dl.py
