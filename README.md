# Tbr1 haploinsufficiency alters amygdalar connectivity and whole-brain synchronization in response to amygdalar activation

Tsan-Ting Hsu<sup>1</sup>, Chien-Yao Wang<sup>2</sup> and [Yi-Ping Hsueh](https://scholar.google.com.tw/citations?user=QLEGxyUAAAAJ&hl=en)<sup>1*</sup>

<sup>1</sup>Institute of Molecular Biology, Academia Sinica, Taipei, Taiwan, ROC

<sup>2</sup>Institute of Information Science, Academia Sinica, Taipei, Taiwan, ROC

> **Abstract** Autism spectrum disorders (ASD) are recognized as neural disconnection syndromes. We here establish a whole-brain immunostaining and quantification platform to investigate structural and functional connectivity in a Tbr1+/– autism mouse model. We express channelrhodopsin variant oChIEF at basolateral amygdalae (BLA) to outline axonal projections of BLA neurons and to activate BLA-derived circuits under blue light theta-burst stimulation (TBS). We then evaluate C-FOS expression to represent neural activity. We found that Tbr1 haploinsufficiency almost completely disrupts contralateral BLA axonal projections and results in ipsilateral mistargeting. Consequently, BLA functional connectivity is globally altered. Based on correlated C-FOS expression among brain regions, we further observe that Tbr1 deficiency severely disrupts whole-brain synchronization. Moreover, Tbr1+/– mice exhibit attenuated default mode network, altered modular organization and inter-module connectivity, as well as opposing responses to TBS at BLA. Our study provides a high-resolution analysis to reveal the inter- and intra-hemispheric connectopathy under an ASD condition.

## Installation

```
pip -r requirements.txt
```

## Data preparation

Please download the sample data from [release page]() and put the data into following data structure.

```
./CCFv3/
  ├── structuretree/
      ├── structure_list_paper.csv
  ├── mask/
      ├── mmm.csv
./quantification/
  ├── ggg
      ├── hhh
          ├── maskL
              ├── jjj
                  ├── kkk.tif
./WT_ctrl_list.csv
./Tbr1_ctrl_list.csv
./WT_TBS_list.csv
./Tbr1_TBS_list.csv
./table_s1.csv
./root_small.vtk
```


## Usage



## Acknowledgement



## Contact

If you have any question, please create an issue on this repository or contact me at tsanting@gate.sinica.edu.tw.
