# Deep brain stimulation at the basolateral amygdala alters whole-brain connectivity and synchronization and social behaviors of _Tbr1_ deficient mice


Tsan-Ting Hsu<sup>1</sup>, Tzyy-Nan Huang<sup>1</sup>, Chien-Yao Wang<sup>2</sup> and [Yi-Ping Hsueh](https://scholar.google.com.tw/citations?user=QLEGxyUAAAAJ&hl=en)<sup>1*</sup>

<sup>1</sup>Institute of Molecular Biology, Academia Sinica, Taipei, Taiwan, ROC

<sup>2</sup>Institute of Information Science, Academia Sinica, Taipei, Taiwan, ROC

> **Abstract** Autism spectrum disorders (ASD) are considered neural dysconnectivity syndromes. To better understand ASD and uncover potential treatments, it is imperative to know and dissect the connectivity deficits under conditions of autism. Here, we apply a whole-brain immunostaining and quantification platform to demonstrate impaired structural and functional connectivity and aberrant whole-brain synchronization in a _Tbr1_<sup>+/–</sup> autism mouse model. We express a channelrhodopsin variant oChIEF fused with Citrine at the basolateral amygdala (BLA) to outline the axonal projections of BLA neurons. By activating the BLA under blue light theta-burst stimulation (TBS), we then evaluate the effect of BLA activation on C-FOS expression at a whole brain level to represent neural activity. We show that _Tbr1_ haploinsufficiency almost completely disrupts contralateral BLA axonal projections and results in mistargeting in both ipsilateral and contralateral hemispheres, thereby globally altering BLA functional connectivity. Based on correlated C-FOS expression among brain regions, we further show that _Tbr1_ deficiency severely disrupts whole-brain synchronization in the absence of salient stimulation. _Tbr1_<sup>+/–</sup> and wild-type (WT) mice exhibit opposing responses to TBS-induced amygdalar activation, reducing synchronization in WT mice but enhancing it in _Tbr1_<sup>+/–</sup> mice. Whole-brain modular organization and inter-module connectivity are also affected by _Tbr1_ deficiency and amygdalar activation. Following BLA activation by TBS, the synchronizations of the whole brain and the default mode network, a specific subnetwork highly relevant to ASD, are enhanced in _Tbr1_<sup>+/–</sup> mice, implying a potential ameliorating effect of amygdalar stimulation on brain function. Indeed, TBS-mediated BLA activation increases nose-to-nose social interactions of _Tbr1_<sup>+/–</sup> mice, strengthening evidence for the role of amygdalar connectivity in social behaviors. Our high-resolution analytical platform reveals the inter- and intra-hemispheric connectopathies arising from ASD. Our study emphasizes the defective synchronization at a whole-brain scale caused by Tbr1 deficiency and implies a potential beneficial effect of deep brain stimulation at the amygdala for TBR1-linked autism.

## Installation

```
pip -r requirements.txt
```

## Data preparation

Please download the sample data from [release page]() and put the data into following data structure.

```
./demo_brain/
  ├── oChIEF_T_b/
      ├── oChIEF_T_b*.png/
  ├── position_Detailed.csv
  ├── reference_list.csv
./CCFv3/
  ├── structuretree/
      ├── structure_list_paper.csv
      ├── structure_list_paper_cfos.csv
  ├── mask+IDX/
      ├── mask+section_number.csv
./quantification/
  ├── genotype
      ├── st_pattern
          ├── sample_folder
              ├── reference_list.csv
              ├── rre_area_L_summary.csv
              ├── rre_area_R_summary.csv
              ├── rre_cfos_L_num_summary.csv
              ├── rre_cfos_L_summary.csv
              ├── rre_cfos_R_num_summary.csv
              ├── rre_cfos_R_summary.csv
              ├── rre_oChIEF_L_summary_b.csv
              ├── rre_oChIEF_L_summary_b.csv
          ├──mask_L
             ├──brain_region
                ├── sample_folder
                    ├── mask*.png
          ├──mask_R
             ├──brain_region
                ├── sample_folder
                    ├── mask*.png
./correlation/
  ├── WT_ctrl_cfos_center.csv
  ├── Tbr1_ctrl_cfos_center.csv
  ├── WT_TBS_cfos_center.csv
  ├── Tbr1_TBS_cfos_center.csv
./WT_small_oChIEF_b_average_folder/
  ├── oChIEF_sb*.png
./Tbr1_small_oChIEF_b_average_folder/
  ├── oChIEF_sb*.png        
./WT_ctrl_list.csv
./Tbr1_ctrl_list.csv
./WT_TBS_list.csv
./Tbr1_TBS_list.csv
./root_small.vtk
./supervised_behavior/
  ├── RSI_10min_summary.csv
  ├── homecage_10min_summary.csv
```


## Usage
1. Demo of regional quantification using Allen CCFv3 regional masks (demo, related to Figure 1 Step 5)  
   -->CCFv3_DMN_region_masks_for_quantification_demo.ipynb  
2. ROI correction of Allen CCFv3 regional masks and requantification  
   -->ROI_correction_with_image_J_demo.ipynb  
   -->createROI_all.ijm  
   -->open_L_image_stack_ROI_correction.ijm / open_R_image_stack_ROI_correction.ijm  
   -->convertROI_into_mask.py  
3. Slice-based quantification and related analysis (related to Figure 2C, 3A, 3C, 3E, 3G, 4A right panel, 4B, 4C right panel,   4D, S8B, S8D)  
   -->Slice_based_analysis_and_corrleation_analysis.ipynb  
4. Inter-regional C-FOS correlations and network analysis (related to Figure 5A, 5B, S5A, S5B, 6A, 6B mean correlations, 7C, 7D, S6A, S6B, S7)  
   -->inter-regional_C-FOS_correlation.ipynb  
5. 3D mapping of averaged labeled axons, C-FOS distributions and their correlations (demo of 3D mapping)  
   -->3D_visualization-demo.ipynb
6. supervised behavior analysis (related to Figure 8B, 8C, S9, S10)  
   -->supervised_behavior_analysis.ipynb

## Acknowledgement
We thank the Imaging Core and Animal Facility of the Institute of Molecular Biology, Academia Sinica, for technical assistance, Dr. John O’Brien for English editing, and members of Y.-P.H.’s laboratory for technical assistance and discussion. This work was supported by grants from Academia Sinica (AS-TP-110-L10 and AS-IA-111-L01 to Y.-P.H.).

## Contact

If you have any question, please create an issue on this repository or contact me at tsanting@gate.sinica.edu.tw.
