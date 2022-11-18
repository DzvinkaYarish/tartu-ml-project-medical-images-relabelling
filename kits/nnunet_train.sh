#!/bin/bash

#SBATCH --partition=gpu
#SBATCH --mem=20G
#SBATCH --cpus-per-task=4
#SBATCH --gres=gpu:tesla:1
#SBATCH --time=240

module load any/python/3.8.3-conda

conda activate nnunet

export nnUNet_raw_data_base=~/nnunet_data
export  RESULTS_FOLDER=~/nnunet_trained_models
export nnUNet_preprocessed=~/nnunet_preprocessed

nnUNet_plan_and_preprocess -t 48

# 0 - train on data from fold 0
nnUNet_train 3d_lowres nnUNetTrainerV2 48 0
