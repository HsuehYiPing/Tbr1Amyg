genotype = newArray("WT", "Tbr1");
st_pattern = newArray("ctrl", "TBS")
hemisphere = "mask_L";
structure = newArray("ACAd", "ACAv", "PL", "ILA", "ORBl", "ORBm", "ORBvl", "VISa", "VISam", "RSPagl", "RSPd", "RSPv", "SSp-tr", "SSp-ll", "MOs");


for (g = 0; g < genotype.length; g++){
	for (t = 0; t < st_pattern.length; t++){
		for (s = 0; s < structure.length; s++){
			brain_list_input ="./quantification/"+genotype[g]+"/"+st_pattern[t]+"/"+hemisphere+"/"+structure[s]+"/"; 	
			brain = getFileList(brain_list_input);		
			for (b = 0; b < brain.length; b++){
			input = "./quantification/"+genotype[g]+"/"+st_pattern[t]+"/"+hemisphere+"/"+structure[s]+"/"+brain[b]+"/";
			print(input);
			setBatchMode(true);
			list = getFileList(input);
			for (i = 0; i < list.length; i++){
			filename = input + list[i];
			print(filename);
			open(filename);
			run("Create Selection");
			run("ROI Manager...");
			roiManager("Add");
			fn =substring (list[i], 0, lastIndexOf(list[i], "."));
			roiManager("Select", i);
			position = parseInt(fn);
			RoiManager.setPosition(position);
			roiManager("Rename", list[i].substring(0,4));
			close();
			}
			roiManager("Save", input+"/RoiSet.zip");
			roiManager("Deselect");
			roiManager("Delete");
			}
		}
	}
}

