import os
import SimpleITK as sitk
from tqdm.auto import tqdm

with os.scandir("/gpfs/space/projects/stud_ml_22/deeplesion/images/Images_nifti") as it:
    for entry in tqdm(it, total=520):
        if entry.name.endswith(".nii.gz") and entry.is_file():
            img = sitk.ReadImage(entry.path)
            img2 = sitk.PermuteAxes(img, [2, 0, 1])
            sitk.WriteImage(img2, "/gpfs/space/projects/stud_ml_22/deeplesion/images_processed/DL_" + str(entry.name).split('.')[0] + "_0000.nii.gz")
