#!/bin/bash


#SBATCH --partition=gpu
#SBATCH --mem=20G
#SBATCH --cpus-per-task=4
#SBATCH --gres=gpu:tesla:1
#SBATCH --time=10

module load any/python/3.8.3-conda

conda activate nnunet

export nnUNet_raw_data_base=~/nnunet_data
export  RESULTS_FOLDER=~/nnunet_trained_models
export nnUNet_preprocessed=~/nnunet_preprocessed

nnUNet_predict -i $nnUNet_raw_data_base/nnUNet_raw_data/Task048_KiTS_clean/imagesTr/ -o $nnUNet_raw_data_base/nnUNet_raw_data/Task048_KiTS_clean/predsTr/ -t 48 -m 3d_lowres --num_threads_preprocessing 1 --num_threads_nifti_save 1


