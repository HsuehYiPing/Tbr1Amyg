genotype = "WT"
st_pattern = "TBS"
//draw reference ROI to help ROI correction
structure1 = "ACAd"
structure2= "ACAv"
structure3 = "PL"

brain = "Sample_folder"

//load reference image stack size: 1140 x 800 (not provided )
open("./"+brain+"/cfos_Tsmall.tif");

roiManager("Open", "./quantification/"+ genotype+"/"+st_pattern+"/mask_L/"+structure1+"/"+brain+"/RoiSet.zip");
roiManager("Draw")
roiManager("Deselect");
roiManager("Delete");
roiManager("Open", "./quantification/"+ genotype+"/"+st_pattern+"/mask_L/"+structure2+"/"+brain+"/RoiSet.zip");
roiManager("Draw")
roiManager("Deselect");
roiManager("Delete")
roiManager("Open", "./quantification/"+ genotype+"/"+st_pattern+"/mask_L/"+structure3+"/"+brain+"/RoiSet.zip");
roiManager("Draw")
roiManager("Deselect");
roiManager("Delete")