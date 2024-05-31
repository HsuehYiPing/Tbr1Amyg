import os
from ij import IJ
from ij import ImagePlus
from ij.plugin.frame import RoiManager
genotype = "WT"
st_pattern = "TBS"
hemisphere = "mask_L"
structure = "ACAd"

structure_path = "./quantification/"+genotype+"/"+st_pattern + "/"+ hemisphere+"/"+structure
dir_list = []
for root, dirs, files in os.walk (structure_path):
	for dir in dirs:
		dir_list.append(dir)


rm = RoiManager.getInstance()
if not rm:
	rm = RoiManager()
 
for a in dir_list:
	ROI_location = structure_path+"/"+a+"/"+"RoiSet.zip"
	rm.runCommand("Open", ROI_location)
	rm.runCommand("list")
	IJ.saveAs("Results", structure_path+"/"+a+"/roi_list.csv")
	ROI_number = rm.getCount()
	for i in range(ROI_number):
		imp = IJ.createImage("Untitled", "8-bit black", 570, 800, 1)
		imp.show()
		rm.select(i)
		mask = imp.createRoiMask()
		maskimp = ImagePlus("Mask", mask)
		maskimp.show()
		IJ.saveAs(maskimp, "PNG", structure_path+"/"+a+"/mask"+rm.getName(i)+".png")
		imp.close()
		maskimp.close()
	rm.runCommand("Delete")
	rm.runCommand("Delete")	



	
	
	