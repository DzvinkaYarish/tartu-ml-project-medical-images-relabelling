#!/bin/bash

#SBATCH --partition=main
#SBATCH --mem=16G
#SBATCH --cpus-per-task=4
#SBATCH --time=240

module load any/python/3.8.3-conda

conda activate nnunet

export nnUNet_raw_data_base=~/nnunet_data
export  RESULTS_FOLDER=~/nnunet_trained_models
export nnUNet_preprocessed=~/nnunet_preprocessed

cd ~/kits19/
python -m starter_code.get_imaging_v2
