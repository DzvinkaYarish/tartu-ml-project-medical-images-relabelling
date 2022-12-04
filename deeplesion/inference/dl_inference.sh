#!/bin/bash

#SBATCH -J deeplesion_preprocess
#SBATCH --partition=gpu
#SBATCH --mem=20G
#SBATCH --cpus-per-task=4
#SBATCH --gres=gpu:tesla:1
#SBATCH --time=2000

module load python/3.8.6

source /gpfs/space/home/fordui/ml_project/.venv/bin/activate

export nnUNet_raw_data_base="/gpfs/space/home/fordui/ml_project/nnUNet_raw_data_base"
export nnUNet_preprocessed="/gpfs/space/home/fordui/ml_project/nnUNet_preprocessed"
export RESULTS_FOLDER="/gpfs/space/home/fordui/ml_project/nnUNet_trained_models"

nnUNet_predict -i /gpfs/space/projects/stud_ml_22/deeplesion/images_processed -o /gpfs/space/projects/stud_ml_22/deeplesion/nnunet_inference_result -t 48 -m 3d_fullres
