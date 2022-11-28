#!/bin/bash

#SBATCH --partition=main
#SBATCH --mem=32G
#SBATCH --cpus-per-task=10
#SBATCH --time=240

module load any/python/3.8.3-conda

conda activate nnunet

export nnUNet_raw_data_base=~/nnunet_data
export  RESULTS_FOLDER=~/nnunet_trained_models
export nnUNet_preprocessed=~/nnunet_preprocessed

nnUNet_plan_and_preprocess -t 48 -tl 8 -tf 8

