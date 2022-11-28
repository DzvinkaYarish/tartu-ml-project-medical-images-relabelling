#!/bin/bash


#SBATCH --partition=gpu
#SBATCH --mem=20G
#SBATCH --cpus-per-task=4
#SBATCH --gres=gpu:tesla:1
#SBATCH --time=60

module load any/python/3.8.3-conda


conda activate nnunetmodule load any/python/3.8.3-conda

export nnUNet_raw_data_base=~/nnunet_data
export  RESULTS_FOLDER=~/nnunet_trained_models
export nnUNet_preprocessed=~/nnunet_preprocessed

nnUNet_predict -i $nnUNet_raw_data_base/nnUNet_raw_data/Task048_KiTS_clean/imagesTr/ -o $nnUNet_raw_data_base/nnUNet_raw_data/Task048_KiTS_clean/predsTr_f0/ -t 48 -m 3d_lowres --num_threads_preprocessing 4 --num_threads_nifti_save 4 -f 0 --splits_file /gpfs/space/home/dzvenymy/nnunet_preprocessed/Task048_KiTS_clean/splits_final.pkl
