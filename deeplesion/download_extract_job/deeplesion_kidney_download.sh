#!/bin/bash
#SBATCH -J download_deepleesion_1_zip
#SBATCH --partition=main
#SBATCH -t 10:00:00
#SBATCH --cpus-per-task=1
#SBATCH --mem=6G

# your code goes below
module load any/python/3.8.3-conda
conda activate conda_venv_deeplesion

python download.py
