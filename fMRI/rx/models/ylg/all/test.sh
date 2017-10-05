#!/bin/bash
3dMVM -prefix test -jobs 8 \
	-wsVars  "Outcome*Context" \
	-SS_type 3 \
	-num_glt 1	\
	-gltLabel 1 'outcome' -gltCode  1 'Outcome : 1*Good -1*Bad' \
	-mask /projects/dsnlab/tds/fMRI/analysis/masks/tds2/tds2_gw_smoothed_group_average_optthr.nii \
	-dataTable 				\
	Subj	Outcome	Context Group InputFile \
	109	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/109/con_0005.nii \
	109	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/109/con_0015.nii \
	109	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/109/con_0025.nii \
	109	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/109/con_0008.nii \
	109	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/109/con_0018.nii \
	109	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/109/con_0028.nii \
	113	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/113/con_0005.nii \
	113	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/113/con_0015.nii \
	113	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/113/con_0025.nii \
	113	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/113/con_0008.nii \
	113	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/113/con_0018.nii \
	113	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/113/con_0028.nii \
	114	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/114/con_0005.nii \
	114	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/114/con_0015.nii \
	114	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/114/con_0025.nii \
	114	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/114/con_0008.nii \
	114	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/114/con_0018.nii \
	114	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/114/con_0028.nii \
	115	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/115/con_0005.nii \
	115	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/115/con_0015.nii \
	115	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/115/con_0025.nii \
	115	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/115/con_0008.nii \
	115	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/115/con_0018.nii \
	115	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/115/con_0028.nii \
	116	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/116/con_0005.nii \
	116	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/116/con_0015.nii \
	116	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/116/con_0025.nii \
	116	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/116/con_0008.nii \
	116	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/116/con_0018.nii \
	116	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/116/con_0028.nii \
	117	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/117/con_0005.nii \
	117	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/117/con_0015.nii \
	117	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/117/con_0025.nii \
	117	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/117/con_0008.nii \
	117	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/117/con_0018.nii \
	117	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/117/con_0028.nii \
	119	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/119/con_0005.nii \
	119	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/119/con_0015.nii \
	119	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/119/con_0025.nii \
	119	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/119/con_0008.nii \
	119	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/119/con_0018.nii \
	119	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/119/con_0028.nii \
	120	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/120/con_0005.nii \
	120	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/120/con_0015.nii \
	120	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/120/con_0025.nii \
	120	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/120/con_0008.nii \
	120	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/120/con_0018.nii \
	120	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/120/con_0028.nii \
	121	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/121/con_0005.nii \
	121	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/121/con_0015.nii \
	121	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/121/con_0025.nii \
	121	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/121/con_0008.nii \
	121	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/121/con_0018.nii \
	121	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/121/con_0028.nii \
	122	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/122/con_0005.nii \
	122	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/122/con_0015.nii \
	122	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/122/con_0025.nii \
	122	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/122/con_0008.nii \
	122	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/122/con_0018.nii \
	122	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/122/con_0028.nii \
	124	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/124/con_0005.nii \
	124	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/124/con_0015.nii \
	124	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/124/con_0025.nii \
	124	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/124/con_0008.nii \
	124	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/124/con_0018.nii \
	124	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/124/con_0028.nii \
	125	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/125/con_0005.nii \
	125	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/125/con_0015.nii \
	125	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/125/con_0025.nii \
	125	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/125/con_0008.nii \
	125	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/125/con_0018.nii \
	125	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/125/con_0028.nii \
	126	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/126/con_0005.nii \
	126	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/126/con_0015.nii \
	126	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/126/con_0025.nii \
	126	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/126/con_0008.nii \
	126	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/126/con_0018.nii \
	126	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/126/con_0028.nii \
	128	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/128/con_0005.nii \
	128	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/128/con_0015.nii \
	128	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/128/con_0025.nii \
	128	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/128/con_0008.nii \
	128	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/128/con_0018.nii \
	128	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/128/con_0028.nii \
	129	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/129/con_0005.nii \
	129	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/129/con_0015.nii \
	129	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/129/con_0025.nii \
	129	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/129/con_0008.nii \
	129	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/129/con_0018.nii \
	129	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/129/con_0028.nii \
	130	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/130/con_0005.nii \
	130	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/130/con_0015.nii \
	130	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/130/con_0025.nii \
	130	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/130/con_0008.nii \
	130	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/130/con_0018.nii \
	130	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/130/con_0028.nii \
	131	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/131/con_0005.nii \
	131	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/131/con_0015.nii \
	131	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/131/con_0025.nii \
	131	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/131/con_0008.nii \
	131	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/131/con_0018.nii \
	131	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/131/con_0028.nii \
	132	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/132/con_0005.nii \
	132	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/132/con_0015.nii \
	132	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/132/con_0025.nii \
	132	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/132/con_0008.nii \
	132	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/132/con_0018.nii \
	132	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/132/con_0028.nii \
	133	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/133/con_0005.nii \
	133	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/133/con_0015.nii \
	133	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/133/con_0025.nii \
	133	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/133/con_0008.nii \
	133	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/133/con_0018.nii \
	133	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/133/con_0028.nii \
	134	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/134/con_0005.nii \
	134	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/134/con_0015.nii \
	134	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/134/con_0025.nii \
	134	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/134/con_0008.nii \
	134	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/134/con_0018.nii \
	134	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/134/con_0028.nii \
	136	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/136/con_0005.nii \
	136	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/136/con_0015.nii \
	136	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/136/con_0025.nii \
	136	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/136/con_0008.nii \
	136	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/136/con_0018.nii \
	136	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/136/con_0028.nii \
	140	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/140/con_0005.nii \
	140	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/140/con_0015.nii \
	140	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/140/con_0025.nii \
	140	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/140/con_0008.nii \
	140	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/140/con_0018.nii \
	140	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/140/con_0028.nii \
	141	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/141/con_0005.nii \
	141	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/141/con_0015.nii \
	141	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/141/con_0025.nii \
	141	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/141/con_0008.nii \
	141	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/141/con_0018.nii \
	141	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/141/con_0028.nii \
	142	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/142/con_0005.nii \
	142	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/142/con_0015.nii \
	142	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/142/con_0025.nii \
	142	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/142/con_0008.nii \
	142	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/142/con_0018.nii \
	142	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/142/con_0028.nii \
	144	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/144/con_0005.nii \
	144	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/144/con_0015.nii \
	144	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/144/con_0025.nii \
	144	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/144/con_0008.nii \
	144	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/144/con_0018.nii \
	144	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/144/con_0028.nii \
	145	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/145/con_0005.nii \
	145	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/145/con_0015.nii \
	145	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/145/con_0025.nii \
	145	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/145/con_0008.nii \
	145	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/145/con_0018.nii \
	145	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/145/con_0028.nii \
	146	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/146/con_0005.nii \
	146	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/146/con_0015.nii \
	146	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/146/con_0025.nii \
	146	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/146/con_0008.nii \
	146	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/146/con_0018.nii \
	146	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/146/con_0028.nii \
	150	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/150/con_0005.nii \
	150	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/150/con_0015.nii \
	150	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/150/con_0025.nii \
	150	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/150/con_0008.nii \
	150	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/150/con_0018.nii \
	150	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/150/con_0028.nii \
	151	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/151/con_0005.nii \
	151	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/151/con_0015.nii \
	151	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/151/con_0025.nii \
	151	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/151/con_0008.nii \
	151	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/151/con_0018.nii \
	151	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/151/con_0028.nii \
	152	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/152/con_0005.nii \
	152	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/152/con_0015.nii \
	152	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/152/con_0025.nii \
	152	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/152/con_0008.nii \
	152	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/152/con_0018.nii \
	152	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/152/con_0028.nii \
	155	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/155/con_0005.nii \
	155	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/155/con_0015.nii \
	155	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/155/con_0025.nii \
	155	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/155/con_0008.nii \
	155	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/155/con_0018.nii \
	155	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/155/con_0028.nii \
	156	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/156/con_0005.nii \
	156	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/156/con_0015.nii \
	156	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/156/con_0025.nii \
	156	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/156/con_0008.nii \
	156	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/156/con_0018.nii \
	156	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/156/con_0028.nii \
	157	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/157/con_0005.nii \
	157	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/157/con_0015.nii \
	157	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/157/con_0025.nii \
	157	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/157/con_0008.nii \
	157	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/157/con_0018.nii \
	157	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/157/con_0028.nii \
	159	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/159/con_0005.nii \
	159	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/159/con_0015.nii \
	159	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/159/con_0025.nii \
	159	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/159/con_0008.nii \
	159	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/159/con_0018.nii \
	159	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/159/con_0028.nii \
	160	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/160/con_0005.nii \
	160	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/160/con_0015.nii \
	160	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/160/con_0025.nii \
	160	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/160/con_0008.nii \
	160	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/160/con_0018.nii \
	160	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/160/con_0028.nii \
	161	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/161/con_0005.nii \
	161	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/161/con_0015.nii \
	161	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/161/con_0025.nii \
	161	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/161/con_0008.nii \
	161	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/161/con_0018.nii \
	161	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/161/con_0028.nii \
	162	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/162/con_0005.nii \
	162	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/162/con_0015.nii \
	162	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/162/con_0025.nii \
	162	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/162/con_0008.nii \
	162	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/162/con_0018.nii \
	162	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/162/con_0028.nii \
	163	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/163/con_0005.nii \
	163	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/163/con_0015.nii \
	163	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/163/con_0025.nii \
	163	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/163/con_0008.nii \
	163	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/163/con_0018.nii \
	163	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/163/con_0028.nii \
	164	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/164/con_0005.nii \
	164	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/164/con_0015.nii \
	164	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/164/con_0025.nii \
	164	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/164/con_0008.nii \
	164	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/164/con_0018.nii \
	164	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/164/con_0028.nii \
	165	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/165/con_0005.nii \
	165	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/165/con_0015.nii \
	165	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/165/con_0025.nii \
	165	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/165/con_0008.nii \
	165	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/165/con_0018.nii \
	165	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/165/con_0028.nii \
	167	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/167/con_0005.nii \
	167	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/167/con_0015.nii \
	167	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/167/con_0025.nii \
	167	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/167/con_0008.nii \
	167	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/167/con_0018.nii \
	167	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/167/con_0028.nii \
	168	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/168/con_0005.nii \
	168	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/168/con_0015.nii \
	168	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/168/con_0025.nii \
	168	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/168/con_0008.nii \
	168	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/168/con_0018.nii \
	168	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/168/con_0028.nii \
	169	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/169/con_0005.nii \
	169	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/169/con_0015.nii \
	169	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/169/con_0025.nii \
	169	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/169/con_0008.nii \
	169	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/169/con_0018.nii \
	169	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/169/con_0028.nii \
	170	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/170/con_0005.nii \
	170	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/170/con_0015.nii \
	170	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/170/con_0025.nii \
	170	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/170/con_0008.nii \
	170	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/170/con_0018.nii \
	170	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/170/con_0028.nii \
	171	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/171/con_0005.nii \
	171	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/171/con_0015.nii \
	171	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/171/con_0025.nii \
	171	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/171/con_0008.nii \
	171	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/171/con_0018.nii \
	171	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/171/con_0028.nii \
	172	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/172/con_0005.nii \
	172	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/172/con_0015.nii \
	172	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/172/con_0025.nii \
	172	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/172/con_0008.nii \
	172	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/172/con_0018.nii \
	172	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/172/con_0028.nii \
	173	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/173/con_0005.nii \
	173	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/173/con_0015.nii \
	173	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/173/con_0025.nii \
	173	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/173/con_0008.nii \
	173	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/173/con_0018.nii \
	173	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/173/con_0028.nii \
	174	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/174/con_0005.nii \
	174	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/174/con_0015.nii \
	174	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/174/con_0025.nii \
	174	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/174/con_0008.nii \
	174	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/174/con_0018.nii \
	174	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/174/con_0028.nii \
	175	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/175/con_0005.nii \
	175	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/175/con_0015.nii \
	175	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/175/con_0025.nii \
	175	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/175/con_0008.nii \
	175	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/175/con_0018.nii \
	175	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/175/con_0028.nii \
	177	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/177/con_0005.nii \
	177	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/177/con_0015.nii \
	177	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/177/con_0025.nii \
	177	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/177/con_0008.nii \
	177	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/177/con_0018.nii \
	177	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/177/con_0028.nii \
	178	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/178/con_0005.nii \
	178	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/178/con_0015.nii \
	178	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/178/con_0025.nii \
	178	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/178/con_0008.nii \
	178	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/178/con_0018.nii \
	178	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/178/con_0028.nii \
	179	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/179/con_0005.nii \
	179	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/179/con_0015.nii \
	179	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/179/con_0025.nii \
	179	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/179/con_0008.nii \
	179	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/179/con_0018.nii \
	179	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/179/con_0028.nii \
	181	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/181/con_0005.nii \
	181	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/181/con_0015.nii \
	181	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/181/con_0025.nii \
	181	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/181/con_0008.nii \
	181	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/181/con_0018.nii \
	181	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/181/con_0028.nii \
	182	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/182/con_0005.nii \
	182	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/182/con_0015.nii \
	182	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/182/con_0025.nii \
	182	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/182/con_0008.nii \
	182	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/182/con_0018.nii \
	182	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/182/con_0028.nii \
	183	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/183/con_0005.nii \
	183	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/183/con_0015.nii \
	183	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/183/con_0025.nii \
	183	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/183/con_0008.nii \
	183	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/183/con_0018.nii \
	183	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/183/con_0028.nii \
	184	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/184/con_0005.nii \
	184	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/184/con_0015.nii \
	184	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/184/con_0025.nii \
	184	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/184/con_0008.nii \
	184	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/184/con_0018.nii \
	184	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/184/con_0028.nii \
	185	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/185/con_0005.nii \
	185	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/185/con_0015.nii \
	185	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/185/con_0025.nii \
	185	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/185/con_0008.nii \
	185	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/185/con_0018.nii \
	185	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/185/con_0028.nii \
	186	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/186/con_0005.nii \
	186	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/186/con_0015.nii \
	186	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/186/con_0025.nii \
	186	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/186/con_0008.nii \
	186	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/186/con_0018.nii \
	186	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/186/con_0028.nii \
	187	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/187/con_0005.nii \
	187	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/187/con_0015.nii \
	187	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/187/con_0025.nii \
	187	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/187/con_0008.nii \
	187	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/187/con_0018.nii \
	187	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/187/con_0028.nii \
	188	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/188/con_0005.nii \
	188	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/188/con_0015.nii \
	188	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/188/con_0025.nii \
	188	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/188/con_0008.nii \
	188	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/188/con_0018.nii \
	188	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/188/con_0028.nii \
	190	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/190/con_0005.nii \
	190	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/190/con_0015.nii \
	190	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/190/con_0025.nii \
	190	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/190/con_0008.nii \
	190	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/190/con_0018.nii \
	190	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/190/con_0028.nii \
	192	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/192/con_0005.nii \
	192	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/192/con_0015.nii \
	192	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/192/con_0025.nii \
	192	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/192/con_0008.nii \
	192	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/192/con_0018.nii \
	192	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/192/con_0028.nii \
	193	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/193/con_0005.nii \
	193	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/193/con_0015.nii \
	193	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/193/con_0025.nii \
	193	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/193/con_0008.nii \
	193	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/193/con_0018.nii \
	193	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/193/con_0028.nii \
	194	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/194/con_0005.nii \
	194	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/194/con_0015.nii \
	194	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/194/con_0025.nii \
	194	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/194/con_0008.nii \
	194	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/194/con_0018.nii \
	194	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/194/con_0028.nii \
	195	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/195/con_0005.nii \
	195	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/195/con_0015.nii \
	195	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/195/con_0025.nii \
	195	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/195/con_0008.nii \
	195	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/195/con_0018.nii \
	195	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/195/con_0028.nii \
	196	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/196/con_0005.nii \
	196	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/196/con_0015.nii \
	196	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/196/con_0025.nii \
	196	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/196/con_0008.nii \
	196	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/196/con_0018.nii \
	196	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/196/con_0028.nii \
	197	Good	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/197/con_0005.nii \
	197	Good	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/197/con_0015.nii \
	197	Good	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/197/con_0025.nii \
	197	Bad	AL	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/197/con_0008.nii \
	197	Bad	PR	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/197/con_0018.nii \
	197	Bad	SE	control	/projects/dsnlab/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth/197/con_0028.nii \
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
  
