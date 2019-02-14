#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=TDS1_GROUP_allconds_3dMVM
#SBATCH --output=output/TDS1_GROUP_allconds_3dMVM.log
#SBATCH --error=output/TDS1_GROUP_allconds_3dMVM_error.log
#SBATCH --time=1-00:00:00
#SBATCH --cpus-per-task=28
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=short,fat

module load prl afni/17.3.00
export LD_PRELOAD=/packages/gcc/7.2/lib64/libstdc++.so

cd /projects/dsnlab/shared/tds/fMRI/analysis/rx/ylg/all/tds1/Outcomes/
	3dMVM -prefix OutcomesXContextXGroup \
	-jobs 28 \
	-bsVars "Group" \
	-wsVars  "Outcome*Context" \
	-SS_type 3 \
	-num_glt 66 \
	-gltLabel 1 'D_AL-SE_EA-COM' -gltCode 1  'Decision : 1*DS +1*DG Context : 1*AL -1*SE Group : 1*EA -1*COM' \
	-gltLabel 2 'D_AL-PR_EA-COM' -gltCode 2  'Decision : 1*DS +1*DG Context : 1*AL -1*PR Group : 1*EA -1*COM' \
	-gltLabel 3 'D_PR-SE_EA-COM' -gltCode 3  'Decision : 1*DS +1*DG Context : 1*PR -1*SE Group : 1*EA -1*COM' \
	-gltLabel 4 'DS_DG_AL-SE_EA-COM' -gltCode 4  'Decision : 1*DS -1*DG Context : 1*AL -1*SE Group : 1*EA -1*COM' \
	-gltLabel 5 'DS_DG_AL-PR_EA-COM' -gltCode 5  'Decision : 1*DS -1*DG Context : 1*AL -1*PR Group : 1*EA -1*COM' \
	-gltLabel 6 'DS_DG_PR-SE_EA-COM' -gltCode 6  'Decision : 1*DS -1*DG Context : 1*PR -1*SE Group : 1*EA -1*COM' \
	-gltLabel 7 'DS_AL_EA-COM' -gltCode 7 'Decision : 1*DS Context : 1*AL Group : 1*EA -1*COM' \
	-gltLabel 8 'DG_AL_EA-COM' -gltCode 8 'Decision : 1*DG Context : 1*AL Group : 1*EA -1*COM' \
	-gltLabel 9 'DS_PR_EA-COM' -gltCode 9 'Decision : 1*DS Context : 1*PR Group : 1*EA -1*COM' \
	-gltLabel 10 'DG_PR_EA-COM' -gltCode 10 'Decision : 1*DG Context : 1*PR Group : 1*EA -1*COM' \
	-gltLabel 11 'DS_SE_EA-COM' -gltCode 11 'Decision : 1*DS Context : 1*SE Group : 1*EA -1*COM' \
	-gltLabel 12 'DG_SE_EA-COM' -gltCode 12 'Decision : 1*DG Context : 1*SE Group : 1*EA -1*COM' \
	-gltLabel 13 'DS_AL-SE_EA-COM' -gltCode 13  'Decision : 1*DS Context : 1*AL -1*SE Group : 1*EA -1*COM' \
	-gltLabel 14 'DS_AL-PR_EA-COM' -gltCode 14  'Decision : 1*DS Context : 1*AL -1*PR Group : 1*EA -1*COM' \
	-gltLabel 15 'DS_PR-SE_EA-COM' -gltCode 15  'Decision : 1*DS Context : 1*PR -1*SE Group : 1*EA -1*COM' \
	-gltLabel 16 'DG_AL-SE_EA-COM' -gltCode 16  'Decision : 1*DG Context : 1*AL -1*SE Group : 1*EA -1*COM' \
	-gltLabel 17 'DG_AL-PR_EA-COM' -gltCode 17  'Decision : 1*DG Context : 1*AL -1*PR Group : 1*EA -1*COM' \
	-gltLabel 18 'DG_PR-SE_EA-COM' -gltCode 18  'Decision : 1*DG Context : 1*PR -1*SE Group : 1*EA -1*COM' \
	-gltLabel 19 'DGo_social_vs_alone_EA-COM' -gltCode 19  'Decision : 1*DG Context : 1*PR + 1*SE -2*AL Group : 1*EA -1*COM' \
	-gltLabel 20 'DStop_social_vs_alone_EA-COM' -gltCode 20  'Decision : 1*DS Context : 1*PR + 1*SE -2*AL Group : 1*EA -1*COM' \
	-gltLabel 21 'D_social_vs_alone_EA-COM' -gltCode 21  'Decision : 1*DS +1*DG Context : 1*PR + 1*SE -2*AL Group : 1*EA -1*COM' \
	-gltLabel 22 'DStop_DGo_social_vs_alone_EA-COM' -gltCode 22  'Decision : 1*DS -1*DG Context : 1*PR + 1*SE -2*AL Group : 1*EA -1*COM' \
	-gltLabel 23 'D_AL-SE_EA' -gltCode 23  'Decision : 1*DS +1*DG Context : 1*AL -1*SE Group : 1*EA' \
	-gltLabel 24 'D_AL-PR_EA' -gltCode 24  'Decision : 1*DS +1*DG Context : 1*AL -1*PR Group : 1*EA' \
	-gltLabel 25 'D_PR-SE_EA' -gltCode 25  'Decision : 1*DS +1*DG Context : 1*PR -1*SE Group : 1*EA' \
	-gltLabel 26 'DS_DG_AL-SE_EA' -gltCode 26  'Decision : 1*DS -1*DG Context : 1*AL -1*SE Group : 1*EA' \
	-gltLabel 27 'DS_DG_AL-PR_EA' -gltCode 27  'Decision : 1*DS -1*DG Context : 1*AL -1*PR Group : 1*EA' \
	-gltLabel 28 'DS_DG_PR-SE_EA' -gltCode 28  'Decision : 1*DS -1*DG Context : 1*PR -1*SE Group : 1*EA' \
	-gltLabel 29 'DS_AL_EA' -gltCode 29 'Decision : 1*DS Context : 1*AL Group : 1*EA' \
	-gltLabel 30 'DG_AL_EA' -gltCode 30 'Decision : 1*DG Context : 1*AL Group : 1*EA' \
	-gltLabel 31 'DS_PR_EA' -gltCode 31 'Decision : 1*DS Context : 1*PR Group : 1*EA' \
	-gltLabel 32 'DG_PR_EA' -gltCode 32  'Decision : 1*DG Context : 1*PR Group : 1*EA' \
	-gltLabel 33 'DS_SE_EA' -gltCode 33  'Decision : 1*DS Context : 1*SE Group : 1*EA' \
	-gltLabel 34 'DG_SE_EA' -gltCode 34  'Decision : 1*DG Context : 1*SE Group : 1*EA' \
	-gltLabel 35 'DS_AL-SE_EA' -gltCode 35  'Decision : 1*DS Context : 1*AL -1*SE Group : 1*EA' \
	-gltLabel 36 'DS_AL-PR_EA' -gltCode 36  'Decision : 1*DS Context : 1*AL -1*PR Group : 1*EA' \
	-gltLabel 37 'DS_PR-SE_EA' -gltCode 37  'Decision : 1*DS Context : 1*PR -1*SE Group : 1*EA' \
	-gltLabel 38 'DG_AL-SE_EA' -gltCode 38  'Decision : 1*DG Context : 1*AL -1*SE Group : 1*EA' \
	-gltLabel 39 'DG_AL-PR_EA' -gltCode 39  'Decision : 1*DG Context : 1*AL -1*PR Group : 1*EA' \
	-gltLabel 40 'DG_PR-SE_EA' -gltCode 40  'Decision : 1*DG Context : 1*PR -1*SE Group : 1*EA' \
	-gltLabel 41 'DGo_social_vs_alone_EA' -gltCode 41  'Decision : 1*DG Context : 1*PR + 1*SE -2*AL Group : 1*EA' \
	-gltLabel 42 'DStop_social_vs_alone_EA' -gltCode 42  'Decision : 1*DS Context : 1*PR + 1*SE -2*AL Group : 1*EA' \
	-gltLabel 43 'D_social_vs_alone_EA' -gltCode 43  'Decision : 1*DS +1*DG Context : 1*PR + 1*SE -2*AL Group : 1*EA' \
	-gltLabel 44 'DStop_DGo_social_vs_alone_EA' -gltCode 44  'Decision : 1*DS -1*DG Context : 1*PR + 1*SE -2*AL Group : 1*EA' \
	-gltLabel 45 'D_AL-SE_COM' -gltCode 45  'Decision : 1*DS +1*DG Context : 1*AL -1*SE Group : 1*COM' \
	-gltLabel 46 'D_AL-PR_COM' -gltCode 46  'Decision : 1*DS +1*DG Context : 1*AL -1*PR Group : 1*COM' \
	-gltLabel 47 'D_PR-SE_COM' -gltCode 47  'Decision : 1*DS +1*DG Context : 1*PR -1*SE Group : 1*COM' \
	-gltLabel 48 'DS_DG_AL-SE_COM' -gltCode 48  'Decision : 1*DS -1*DG Context : 1*AL -1*SE Group : 1*COM' \
	-gltLabel 49 'DS_DG_AL-PR_COM' -gltCode 49  'Decision : 1*DS -1*DG Context : 1*AL -1*PR Group : 1*COM' \
	-gltLabel 50 'DS_DG_PR-SE_COM' -gltCode 50  'Decision : 1*DS -1*DG Context : 1*PR -1*SE Group : 1*COM' \
	-gltLabel 51 'DS_AL_COM' -gltCode 51 'Decision : 1*DS Context : 1*AL Group : 1*COM' \
	-gltLabel 52 'DG_AL_COM' -gltCode 52 'Decision : 1*DG Context : 1*AL Group : 1*COM' \
	-gltLabel 53 'DS_PR_COM' -gltCode 53 'Decision : 1*DS Context : 1*PR Group : 1*COM' \
	-gltLabel 54 'DG_PR_COM' -gltCode 54  'Decision : 1*DG Context : 1*PR Group : 1*COM' \
	-gltLabel 55 'DS_SE_COM' -gltCode 55  'Decision : 1*DS Context : 1*SE Group : 1*COM' \
	-gltLabel 56 'DG_SE_COM' -gltCode 56  'Decision : 1*DG Context : 1*SE Group : 1*COM' \
	-gltLabel 57 'DS_AL-SE_COM' -gltCode 57  'Decision : 1*DS Context : 1*AL -1*SE Group : 1*COM' \
	-gltLabel 58 'DS_AL-PR_COM' -gltCode 58  'Decision : 1*DS Context : 1*AL -1*PR Group : 1*COM' \
	-gltLabel 59 'DS_PR-SE_COM' -gltCode 59  'Decision : 1*DS Context : 1*PR -1*SE Group : 1*COM' \
	-gltLabel 60 'DG_AL-SE_COM' -gltCode 60  'Decision : 1*DG Context : 1*AL -1*SE Group : 1*COM' \
	-gltLabel 61 'DG_AL-PR_COM' -gltCode 61  'Decision : 1*DG Context : 1*AL -1*PR Group : 1*COM' \
	-gltLabel 62 'DG_PR-SE_COM' -gltCode 62  'Decision : 1*DG Context : 1*PR -1*SE Group : 1*COM' \
	-gltLabel 63 'DGo_social_vs_alone_COM' -gltCode 63  'Decision : 1*DG Context : 1*PR + 1*SE -2*AL Group : 1*COM' \
	-gltLabel 64 'DStop_social_vs_alone_COM' -gltCode 64  'Decision : 1*DS Context : 1*PR + 1*SE -2*AL Group : 1*COM' \
	-gltLabel 65 'D_social_vs_alone_COM' -gltCode 65  'Decision : 1*DS +1*DG Context : 1*PR + 1*SE -2*AL Group : 1*COM' \
	-gltLabel 66 'DStop_DGo_social_vs_alone_COM' -gltCode 66  'Decision : 1*DS -1*DG Context : 1*PR + 1*SE -2*AL Group : 1*COM' \
	-mask /projects/dsnlab/shared/tds/fMRI/analysis/masks/tds1_tds2/tds1_tds2_gw_smoothed_group_average_optthr_2mm.nii \
	-dataTable 				\
Subj Outcome Context Group InputFile \
	109	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0003.nii \
	109	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0013.nii \
	109	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0023.nii \
	109	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0002.nii \
	109	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0012.nii \
	109	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/109/con_0022.nii \
	113	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0003.nii \
	113	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0013.nii \
	113	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0023.nii \
	113	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0002.nii \
	113	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0012.nii \
	113	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/113/con_0022.nii \
	114	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0003.nii \
	114	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0013.nii \
	114	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0023.nii \
	114	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0002.nii \
	114	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0012.nii \
	114	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/114/con_0022.nii \
	115	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0003.nii \
	115	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0013.nii \
	115	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0023.nii \
	115	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0002.nii \
	115	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0012.nii \
	115	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/115/con_0022.nii \
	116	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0003.nii \
	116	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0013.nii \
	116	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0023.nii \
	116	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0002.nii \
	116	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0012.nii \
	116	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/116/con_0022.nii \
	117	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0003.nii \
	117	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0013.nii \
	117	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0023.nii \
	117	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0002.nii \
	117	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0012.nii \
	117	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/117/con_0022.nii \
	119	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0003.nii \
	119	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0013.nii \
	119	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0023.nii \
	119	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0002.nii \
	119	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0012.nii \
	119	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/119/con_0022.nii \
	120	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0003.nii \
	120	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0013.nii \
	120	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0023.nii \
	120	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0002.nii \
	120	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0012.nii \
	120	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/120/con_0022.nii \
	121	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0003.nii \
	121	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0013.nii \
	121	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0023.nii \
	121	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0002.nii \
	121	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0012.nii \
	121	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/121/con_0022.nii \
	122	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0003.nii \
	122	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0013.nii \
	122	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0023.nii \
	122	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0002.nii \
	122	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0012.nii \
	122	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/122/con_0022.nii \
	124	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0003.nii \
	124	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0013.nii \
	124	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0023.nii \
	124	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0002.nii \
	124	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0012.nii \
	124	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/124/con_0022.nii \
	125	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0003.nii \
	125	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0013.nii \
	125	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0023.nii \
	125	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0002.nii \
	125	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0012.nii \
	125	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/125/con_0022.nii \
	126	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0003.nii \
	126	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0013.nii \
	126	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0023.nii \
	126	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0002.nii \
	126	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0012.nii \
	126	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/126/con_0022.nii \
	128	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0003.nii \
	128	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0013.nii \
	128	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0023.nii \
	128	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0002.nii \
	128	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0012.nii \
	128	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/128/con_0022.nii \
	129	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0003.nii \
	129	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0013.nii \
	129	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0023.nii \
	129	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0002.nii \
	129	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0012.nii \
	129	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/129/con_0022.nii \
	130	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0003.nii \
	130	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0013.nii \
	130	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0023.nii \
	130	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0002.nii \
	130	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0012.nii \
	130	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/130/con_0022.nii \
	131	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0003.nii \
	131	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0013.nii \
	131	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0023.nii \
	131	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0002.nii \
	131	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0012.nii \
	131	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/131/con_0022.nii \
	132	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0003.nii \
	132	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0013.nii \
	132	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0023.nii \
	132	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0002.nii \
	132	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0012.nii \
	132	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/132/con_0022.nii \
	133	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0003.nii \
	133	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0013.nii \
	133	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0023.nii \
	133	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0002.nii \
	133	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0012.nii \
	133	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/133/con_0022.nii \
	134	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0003.nii \
	134	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0013.nii \
	134	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0023.nii \
	134	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0002.nii \
	134	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0012.nii \
	134	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/134/con_0022.nii \
	136	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0003.nii \
	136	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0013.nii \
	136	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0023.nii \
	136	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0002.nii \
	136	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0012.nii \
	136	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/136/con_0022.nii \
	140	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0003.nii \
	140	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0013.nii \
	140	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0023.nii \
	140	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0002.nii \
	140	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0012.nii \
	140	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/140/con_0022.nii \
	141	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0003.nii \
	141	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0013.nii \
	141	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0023.nii \
	141	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0002.nii \
	141	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0012.nii \
	141	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/141/con_0022.nii \
	142	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0003.nii \
	142	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0013.nii \
	142	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0023.nii \
	142	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0002.nii \
	142	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0012.nii \
	142	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/142/con_0022.nii \
	144	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0003.nii \
	144	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0013.nii \
	144	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0023.nii \
	144	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0002.nii \
	144	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0012.nii \
	144	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/144/con_0022.nii \
	145	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0003.nii \
	145	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0013.nii \
	145	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0023.nii \
	145	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0002.nii \
	145	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0012.nii \
	145	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/145/con_0022.nii \
	146	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0003.nii \
	146	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0013.nii \
	146	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0023.nii \
	146	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0002.nii \
	146	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0012.nii \
	146	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/146/con_0022.nii \
	150	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0003.nii \
	150	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0013.nii \
	150	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0023.nii \
	150	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0002.nii \
	150	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0012.nii \
	150	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/150/con_0022.nii \
	151	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0003.nii \
	151	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0013.nii \
	151	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0023.nii \
	151	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0002.nii \
	151	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0012.nii \
	151	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/151/con_0022.nii \
	152	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0003.nii \
	152	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0013.nii \
	152	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0023.nii \
	152	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0002.nii \
	152	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0012.nii \
	152	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/152/con_0022.nii \
	155	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0003.nii \
	155	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0013.nii \
	155	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0023.nii \
	155	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0002.nii \
	155	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0012.nii \
	155	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/155/con_0022.nii \
	156	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0003.nii \
	156	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0013.nii \
	156	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0023.nii \
	156	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0002.nii \
	156	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0012.nii \
	156	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/156/con_0022.nii \
	157	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0003.nii \
	157	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0013.nii \
	157	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0023.nii \
	157	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0002.nii \
	157	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0012.nii \
	157	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/157/con_0022.nii \
	159	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0003.nii \
	159	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0013.nii \
	159	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0023.nii \
	159	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0002.nii \
	159	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0012.nii \
	159	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/159/con_0022.nii \
	160	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0003.nii \
	160	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0013.nii \
	160	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0023.nii \
	160	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0002.nii \
	160	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0012.nii \
	160	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/160/con_0022.nii \
	161	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0003.nii \
	161	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0013.nii \
	161	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0023.nii \
	161	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0002.nii \
	161	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0012.nii \
	161	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/161/con_0022.nii \
	162	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0003.nii \
	162	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0013.nii \
	162	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0023.nii \
	162	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0002.nii \
	162	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0012.nii \
	162	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/162/con_0022.nii \
	163	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0003.nii \
	163	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0013.nii \
	163	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0023.nii \
	163	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0002.nii \
	163	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0012.nii \
	163	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/163/con_0022.nii \
	164	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0003.nii \
	164	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0013.nii \
	164	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0023.nii \
	164	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0002.nii \
	164	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0012.nii \
	164	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/164/con_0022.nii \
	165	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0003.nii \
	165	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0013.nii \
	165	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0023.nii \
	165	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0002.nii \
	165	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0012.nii \
	165	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/165/con_0022.nii \
	167	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0003.nii \
	167	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0013.nii \
	167	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0023.nii \
	167	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0002.nii \
	167	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0012.nii \
	167	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/167/con_0022.nii \
	168	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0003.nii \
	168	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0013.nii \
	168	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0023.nii \
	168	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0002.nii \
	168	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0012.nii \
	168	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/168/con_0022.nii \
	169	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0003.nii \
	169	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0013.nii \
	169	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0023.nii \
	169	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0002.nii \
	169	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0012.nii \
	169	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/169/con_0022.nii \
	170	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0003.nii \
	170	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0013.nii \
	170	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0023.nii \
	170	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0002.nii \
	170	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0012.nii \
	170	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/170/con_0022.nii \
	171	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0003.nii \
	171	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0013.nii \
	171	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0023.nii \
	171	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0002.nii \
	171	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0012.nii \
	171	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/171/con_0022.nii \
	172	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0003.nii \
	172	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0013.nii \
	172	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0023.nii \
	172	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0002.nii \
	172	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0012.nii \
	172	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/172/con_0022.nii \
	173	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0003.nii \
	173	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0013.nii \
	173	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0023.nii \
	173	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0002.nii \
	173	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0012.nii \
	173	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/173/con_0022.nii \
	174	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0003.nii \
	174	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0013.nii \
	174	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0023.nii \
	174	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0002.nii \
	174	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0012.nii \
	174	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/174/con_0022.nii \
	175	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0003.nii \
	175	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0013.nii \
	175	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0023.nii \
	175	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0002.nii \
	175	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0012.nii \
	175	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/175/con_0022.nii \
	177	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0003.nii \
	177	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0013.nii \
	177	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0023.nii \
	177	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0002.nii \
	177	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0012.nii \
	177	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/177/con_0022.nii \
	178	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0003.nii \
	178	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0013.nii \
	178	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0023.nii \
	178	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0002.nii \
	178	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0012.nii \
	178	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/178/con_0022.nii \
	179	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0003.nii \
	179	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0013.nii \
	179	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0023.nii \
	179	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0002.nii \
	179	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0012.nii \
	179	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/179/con_0022.nii \
	181	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0003.nii \
	181	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0013.nii \
	181	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0023.nii \
	181	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0002.nii \
	181	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0012.nii \
	181	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/181/con_0022.nii \
	182	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0003.nii \
	182	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0013.nii \
	182	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0023.nii \
	182	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0002.nii \
	182	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0012.nii \
	182	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/182/con_0022.nii \
	183	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0003.nii \
	183	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0013.nii \
	183	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0023.nii \
	183	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0002.nii \
	183	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0012.nii \
	183	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/183/con_0022.nii \
	184	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0003.nii \
	184	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0013.nii \
	184	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0023.nii \
	184	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0002.nii \
	184	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0012.nii \
	184	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/184/con_0022.nii \
	185	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0003.nii \
	185	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0013.nii \
	185	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0023.nii \
	185	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0002.nii \
	185	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0012.nii \
	185	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/185/con_0022.nii \
	186	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0003.nii \
	186	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0013.nii \
	186	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0023.nii \
	186	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0002.nii \
	186	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0012.nii \
	186	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/186/con_0022.nii \
	187	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0003.nii \
	187	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0013.nii \
	187	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0023.nii \
	187	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0002.nii \
	187	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0012.nii \
	187	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/187/con_0022.nii \
	188	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0003.nii \
	188	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0013.nii \
	188	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0023.nii \
	188	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0002.nii \
	188	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0012.nii \
	188	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/188/con_0022.nii \
	190	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0003.nii \
	190	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0013.nii \
	190	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0023.nii \
	190	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0002.nii \
	190	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0012.nii \
	190	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/190/con_0022.nii \
	192	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0003.nii \
	192	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0013.nii \
	192	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0023.nii \
	192	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0002.nii \
	192	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0012.nii \
	192	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/192/con_0022.nii \
	193	DS	AL COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0003.nii \
	193	DS	PR COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0013.nii \
	193	DS	SE COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0023.nii \
	193	DG	AL COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0002.nii \
	193	DG	PR COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0012.nii \
	193	DG	SE COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/193/con_0022.nii \
	194	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0003.nii \
	194	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0013.nii \
	194	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0023.nii \
	194	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0002.nii \
	194	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0012.nii \
	194	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/194/con_0022.nii \
	195	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0003.nii \
	195	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0013.nii \
	195	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0023.nii \
	195	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0002.nii \
	195	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0012.nii \
	195	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/195/con_0022.nii \
	196	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0003.nii \
	196	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0013.nii \
	196	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0023.nii \
	196	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0002.nii \
	196	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0012.nii \
	196	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/196/con_0022.nii \
	197	DS	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0003.nii \
	197	DS	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0013.nii \
	197	DS	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0023.nii \
	197	DG	AL	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0002.nii \
	197	DG	PR	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0012.nii \
	197	DG	SE	COM	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/197/con_0022.nii \
	302	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/302/con_0003.nii \
	302	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/302/con_0013.nii \
	302	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/302/con_0023.nii \
	302	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/302/con_0002.nii \
	302	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/302/con_0012.nii \
	302	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/302/con_0022.nii \
	303	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/303/con_0003.nii \
	303	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/303/con_0013.nii \
	303	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/303/con_0023.nii \
	303	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/303/con_0002.nii \
	303	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/303/con_0012.nii \
	303	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/303/con_0022.nii \
	306	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/306/con_0003.nii \
	306	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/306/con_0013.nii \
	306	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/306/con_0023.nii \
	306	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/306/con_0002.nii \
	306	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/306/con_0012.nii \
	306	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/306/con_0022.nii \
	307	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/307/con_0003.nii \
	307	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/307/con_0013.nii \
	307	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/307/con_0023.nii \
	307	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/307/con_0002.nii \
	307	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/307/con_0012.nii \
	307	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/307/con_0022.nii \
	308	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/308/con_0003.nii \
	308	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/308/con_0013.nii \
	308	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/308/con_0023.nii \
	308	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/308/con_0002.nii \
	308	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/308/con_0012.nii \
	308	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/308/con_0022.nii \
	309	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/309/con_0003.nii \
	309	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/309/con_0013.nii \
	309	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/309/con_0023.nii \
	309	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/309/con_0002.nii \
	309	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/309/con_0012.nii \
	309	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/309/con_0022.nii \
	310	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/310/con_0003.nii \
	310	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/310/con_0013.nii \
	310	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/310/con_0023.nii \
	310	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/310/con_0002.nii \
	310	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/310/con_0012.nii \
	310	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/310/con_0022.nii \
	312	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/312/con_0003.nii \
	312	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/312/con_0013.nii \
	312	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/312/con_0023.nii \
	312	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/312/con_0002.nii \
	312	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/312/con_0012.nii \
	312	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/312/con_0022.nii \
	313	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/313/con_0003.nii \
	313	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/313/con_0013.nii \
	313	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/313/con_0023.nii \
	313	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/313/con_0002.nii \
	313	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/313/con_0012.nii \
	313	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/313/con_0022.nii \
	314	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/314/con_0003.nii \
	314	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/314/con_0013.nii \
	314	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/314/con_0023.nii \
	314	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/314/con_0002.nii \
	314	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/314/con_0012.nii \
	314	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/314/con_0022.nii \
	316	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/316/con_0003.nii \
	316	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/316/con_0013.nii \
	316	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/316/con_0023.nii \
	316	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/316/con_0002.nii \
	316	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/316/con_0012.nii \
	316	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/316/con_0022.nii \
	317	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/317/con_0003.nii \
	317	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/317/con_0013.nii \
	317	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/317/con_0023.nii \
	317	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/317/con_0002.nii \
	317	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/317/con_0012.nii \
	317	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/317/con_0022.nii \
	320	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/320/con_0003.nii \
	320	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/320/con_0013.nii \
	320	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/320/con_0023.nii \
	320	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/320/con_0002.nii \
	320	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/320/con_0012.nii \
	320	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/320/con_0022.nii \
	321	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/321/con_0003.nii \
	321	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/321/con_0013.nii \
	321	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/321/con_0023.nii \
	321	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/321/con_0002.nii \
	321	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/321/con_0012.nii \
	321	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/321/con_0022.nii \
	322	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/322/con_0003.nii \
	322	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/322/con_0013.nii \
	322	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/322/con_0023.nii \
	322	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/322/con_0002.nii \
	322	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/322/con_0012.nii \
	322	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/322/con_0022.nii \
	323	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/323/con_0003.nii \
	323	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/323/con_0013.nii \
	323	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/323/con_0023.nii \
	323	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/323/con_0002.nii \
	323	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/323/con_0012.nii \
	323	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/323/con_0022.nii \
	324	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/324/con_0003.nii \
	324	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/324/con_0013.nii \
	324	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/324/con_0023.nii \
	324	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/324/con_0002.nii \
	324	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/324/con_0012.nii \
	324	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/324/con_0022.nii \
	325	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/325/con_0003.nii \
	325	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/325/con_0013.nii \
	325	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/325/con_0023.nii \
	325	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/325/con_0002.nii \
	325	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/325/con_0012.nii \
	325	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/325/con_0022.nii \
	326	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/326/con_0003.nii \
	326	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/326/con_0013.nii \
	326	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/326/con_0023.nii \
	326	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/326/con_0002.nii \
	326	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/326/con_0012.nii \
	326	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/326/con_0022.nii \
	327	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/327/con_0003.nii \
	327	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/327/con_0013.nii \
	327	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/327/con_0023.nii \
	327	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/327/con_0002.nii \
	327	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/327/con_0012.nii \
	327	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/327/con_0022.nii \
	328	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/328/con_0003.nii \
	328	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/328/con_0013.nii \
	328	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/328/con_0023.nii \
	328	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/328/con_0002.nii \
	328	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/328/con_0012.nii \
	328	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/328/con_0022.nii \
	329	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/329/con_0003.nii \
	329	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/329/con_0013.nii \
	329	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/329/con_0023.nii \
	329	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/329/con_0002.nii \
	329	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/329/con_0012.nii \
	329	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/329/con_0022.nii \
	330	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/330/con_0003.nii \
	330	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/330/con_0013.nii \
	330	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/330/con_0023.nii \
	330	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/330/con_0002.nii \
	330	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/330/con_0012.nii \
	330	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/330/con_0022.nii \
	331	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/331/con_0003.nii \
	331	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/331/con_0013.nii \
	331	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/331/con_0023.nii \
	331	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/331/con_0002.nii \
	331	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/331/con_0012.nii \
	331	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/331/con_0022.nii \
	332	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/332/con_0003.nii \
	332	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/332/con_0013.nii \
	332	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/332/con_0023.nii \
	332	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/332/con_0002.nii \
	332	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/332/con_0012.nii \
	332	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/332/con_0022.nii \
	333	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/333/con_0003.nii \
	333	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/333/con_0013.nii \
	333	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/333/con_0023.nii \
	333	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/333/con_0002.nii \
	333	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/333/con_0012.nii \
	333	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/333/con_0022.nii \
	335	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/335/con_0003.nii \
	335	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/335/con_0013.nii \
	335	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/335/con_0023.nii \
	335	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/335/con_0002.nii \
	335	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/335/con_0012.nii \
	335	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/335/con_0022.nii \
	336	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/336/con_0003.nii \
	336	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/336/con_0013.nii \
	336	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/336/con_0023.nii \
	336	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/336/con_0002.nii \
	336	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/336/con_0012.nii \
	336	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/336/con_0022.nii \
	337	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/337/con_0003.nii \
	337	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/337/con_0013.nii \
	337	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/337/con_0023.nii \
	337	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/337/con_0002.nii \
	337	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/337/con_0012.nii \
	337	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/337/con_0022.nii \
	340	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/340/con_0003.nii \
	340	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/340/con_0013.nii \
	340	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/340/con_0023.nii \
	340	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/340/con_0002.nii \
	340	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/340/con_0012.nii \
	340	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/340/con_0022.nii \
	341	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/341/con_0003.nii \
	341	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/341/con_0013.nii \
	341	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/341/con_0023.nii \
	341	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/341/con_0002.nii \
	341	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/341/con_0012.nii \
	341	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/341/con_0022.nii \
	342	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/342/con_0003.nii \
	342	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/342/con_0013.nii \
	342	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/342/con_0023.nii \
	342	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/342/con_0002.nii \
	342	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/342/con_0012.nii \
	342	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/342/con_0022.nii \
	343	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/343/con_0003.nii \
	343	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/343/con_0013.nii \
	343	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/343/con_0023.nii \
	343	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/343/con_0002.nii \
	343	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/343/con_0012.nii \
	343	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/343/con_0022.nii \
	344	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/344/con_0003.nii \
	344	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/344/con_0013.nii \
	344	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/344/con_0023.nii \
	344	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/344/con_0002.nii \
	344	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/344/con_0012.nii \
	344	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/344/con_0022.nii \
	346	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/346/con_0003.nii \
	346	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/346/con_0013.nii \
	346	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/346/con_0023.nii \
	346	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/346/con_0002.nii \
	346	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/346/con_0012.nii \
	346	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/346/con_0022.nii \
	347	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/347/con_0003.nii \
	347	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/347/con_0013.nii \
	347	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/347/con_0023.nii \
	347	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/347/con_0002.nii \
	347	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/347/con_0012.nii \
	347	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/347/con_0022.nii \
	348	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/348/con_0003.nii \
	348	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/348/con_0013.nii \
	348	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/348/con_0023.nii \
	348	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/348/con_0002.nii \
	348	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/348/con_0012.nii \
	348	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/348/con_0022.nii \
	349	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/349/con_0003.nii \
	349	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/349/con_0013.nii \
	349	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/349/con_0023.nii \
	349	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/349/con_0002.nii \
	349	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/349/con_0012.nii \
	349	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/349/con_0022.nii \
	351	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/351/con_0003.nii \
	351	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/351/con_0013.nii \
	351	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/351/con_0023.nii \
	351	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/351/con_0002.nii \
	351	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/351/con_0012.nii \
	351	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/351/con_0022.nii \
	352	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/352/con_0003.nii \
	352	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/352/con_0013.nii \
	352	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/352/con_0023.nii \
	352	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/352/con_0002.nii \
	352	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/352/con_0012.nii \
	352	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/352/con_0022.nii \
	353	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/353/con_0003.nii \
	353	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/353/con_0013.nii \
	353	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/353/con_0023.nii \
	353	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/353/con_0002.nii \
	353	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/353/con_0012.nii \
	353	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/353/con_0022.nii \
	354	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/354/con_0003.nii \
	354	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/354/con_0013.nii \
	354	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/354/con_0023.nii \
	354	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/354/con_0002.nii \
	354	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/354/con_0012.nii \
	354	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/354/con_0022.nii \
	355	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/355/con_0003.nii \
	355	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/355/con_0013.nii \
	355	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/355/con_0023.nii \
	355	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/355/con_0002.nii \
	355	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/355/con_0012.nii \
	355	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/355/con_0022.nii \
	357	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/357/con_0003.nii \
	357	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/357/con_0013.nii \
	357	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/357/con_0023.nii \
	357	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/357/con_0002.nii \
	357	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/357/con_0012.nii \
	357	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/357/con_0022.nii \
	359	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/359/con_0003.nii \
	359	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/359/con_0013.nii \
	359	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/359/con_0023.nii \
	359	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/359/con_0002.nii \
	359	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/359/con_0012.nii \
	359	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/359/con_0022.nii \
	360	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/360/con_0003.nii \
	360	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/360/con_0013.nii \
	360	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/360/con_0023.nii \
	360	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/360/con_0002.nii \
	360	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/360/con_0012.nii \
	360	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/360/con_0022.nii \
	361	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/361/con_0003.nii \
	361	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/361/con_0013.nii \
	361	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/361/con_0023.nii \
	361	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/361/con_0002.nii \
	361	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/361/con_0012.nii \
	361	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/361/con_0022.nii \
	363	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/363/con_0003.nii \
	363	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/363/con_0013.nii \
	363	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/363/con_0023.nii \
	363	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/363/con_0002.nii \
	363	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/363/con_0012.nii \
	363	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/363/con_0022.nii \
	365	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/365/con_0003.nii \
	365	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/365/con_0013.nii \
	365	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/365/con_0023.nii \
	365	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/365/con_0002.nii \
	365	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/365/con_0012.nii \
	365	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/365/con_0022.nii \
	367	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/367/con_0003.nii \
	367	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/367/con_0013.nii \
	367	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/367/con_0023.nii \
	367	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/367/con_0002.nii \
	367	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/367/con_0012.nii \
	367	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/367/con_0022.nii \
	368	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/368/con_0003.nii \
	368	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/368/con_0013.nii \
	368	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/368/con_0023.nii \
	368	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/368/con_0002.nii \
	368	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/368/con_0012.nii \
	368	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/368/con_0022.nii \
	369	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/369/con_0003.nii \
	369	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/369/con_0013.nii \
	369	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/369/con_0023.nii \
	369	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/369/con_0002.nii \
	369	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/369/con_0012.nii \
	369	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/369/con_0022.nii \
	371	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/371/con_0003.nii \
	371	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/371/con_0013.nii \
	371	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/371/con_0023.nii \
	371	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/371/con_0002.nii \
	371	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/371/con_0012.nii \
	371	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/371/con_0022.nii \
	372	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/372/con_0003.nii \
	372	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/372/con_0013.nii \
	372	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/372/con_0023.nii \
	372	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/372/con_0002.nii \
	372	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/372/con_0012.nii \
	372	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/372/con_0022.nii \
	373	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/373/con_0003.nii \
	373	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/373/con_0013.nii \
	373	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/373/con_0023.nii \
	373	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/373/con_0002.nii \
	373	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/373/con_0012.nii \
	373	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/373/con_0022.nii \
	374	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/374/con_0003.nii \
	374	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/374/con_0013.nii \
	374	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/374/con_0023.nii \
	374	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/374/con_0002.nii \
	374	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/374/con_0012.nii \
	374	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/374/con_0022.nii \
	375	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/375/con_0003.nii \
	375	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/375/con_0013.nii \
	375	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/375/con_0023.nii \
	375	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/375/con_0002.nii \
	375	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/375/con_0012.nii \
	375	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/375/con_0022.nii \