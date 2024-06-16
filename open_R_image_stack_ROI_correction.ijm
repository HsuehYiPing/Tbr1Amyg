genotype = "WT"
st_pattern = "TBS"
//draw reference ROI to help ROI correction
structure1 = "ACAd"
structure2 = "ACAv"
structure3 = "PL"
brain = "Sample_folder"

//load reference image stack size: 1140 x 800 pixels (not provided )
open("./"+brain+"/reference_img.tif");
selectWindow("cfos_Tsmall.tif");
makeRectangle(570, 0, 570, 800);
run("ROI Manager...");
roiManager("Add");
roiManager("Select", 0);
run("Crop");
roiManager("Delete");
roiManager("Open", "./quantification/"+genotype+"/" + st_pattern +"/mask_R/"+structure1 + "/"+ brain+"/RoiSet.zip");
roiManager("Draw")
roiManager("Deselect");
roiManager("Delete");
roiManager("Open", "./quantification/"+genotype+"/" + st_pattern +"/mask_R/"+structure2 + "/"+ brain+"/RoiSet.zip");
roiManager("Draw")
roiManager("Deselect");
roiManager("Delete");
roiManager("Open", "./quantification/"+genotype+"/" + st_pattern +"/mask_R/"+structure3 + "/"+ brain+"/RoiSet.zip");
roiManager("Draw")
roiManager("Deselect");
roiManager("Delete")
