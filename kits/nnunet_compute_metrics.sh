#!/bin/bash


module load any/python/3.8.3-conda

conda activate nnunet

export nnUNet_raw_data_base=~/nnunet_data
export  RESULTS_FOLDER=~/nnunet_trained_models
export nnUNet_preprocessed=~/nnunet_preprocessed


nnUNet_evaluate_folder -ref  ~/nnunet_data/nnUNet_raw_data/Task048_KiTS_clean/labelsTr/ -pred ~/nnunet_data/nnUNet_raw_data/Task048_KiTS_clean/predsTr_f0/ -l 1 2 --splits_file /gpfs/space/home/dzvenymy/nnunet_preprocessed/Task048_KiTS_clean/splits_final.pkl -f 0