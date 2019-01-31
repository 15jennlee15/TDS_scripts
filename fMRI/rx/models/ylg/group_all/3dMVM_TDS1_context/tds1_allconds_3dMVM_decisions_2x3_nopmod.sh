#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=TDS_allconds_nopmods_3dmvm
#SBATCH --output=output/allcons_nppmods_3dmvm.log
#SBATCH --error=output/allcons_3dmvm_nopmods_error.log
#SBATCH --time=1-00:00:00
#SBATCH --cpus-per-task=28
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=short,fat

module load prl afni/17.3.00
export LD_PRELOAD=/packages/gcc/7.2/lib64/libstdc++.so

cd /projects/dsnlab/shared/tds/fMRI/analysis/rx/ylg/all/tds1/Decisions/
	3dMVM -prefix DecisionsXContext_nopmod_TDS1 \
	-jobs 28 \
	-wsVars  "Decision*Context" \
	-SS_type 3 \
	-num_glt 18 \
	-gltLabel 1 'D_AL-SE_EA' -gltCode 1  'Decision : 1*DS +1*DG Context : 1*AL -1*SE' \
	-gltLabel 2 'D_AL-PR_EA' -gltCode 2  'Decision : 1*DS +1*DG Context : 1*AL -1*PR' \
	-gltLabel 3 'D_PR-SE_EA' -gltCode 3  'Decision : 1*DS +1*DG Context : 1*PR -1*SE' \
	-gltLabel 4 'DS_DG_AL-SE_EA' -gltCode 4  'Decision : 1*DS -1*DG Context : 1*AL -1*SE' \
	-gltLabel 5 'DS_DG_AL-PR_EA' -gltCode 5  'Decision : 1*DS -1*DG Context : 1*AL -1*PR' \
	-gltLabel 6 'DS_DG_PR-SE_EA' -gltCode 6  'Decision : 1*DS -1*DG Context : 1*PR -1*SE' \
	-gltLabel 7 'DS_AL_EA' -gltCode 7 'Decision : 1*DS Context : 1*AL' \
	-gltLabel 8 'DG_AL_EA' -gltCode 8 'Decision : 1*DG Context : 1*AL' \
	-gltLabel 9 'DS_PR_EA' -gltCode 9 'Decision : 1*DS Context : 1*PR' \
	-gltLabel 10 'DG_PR_EA' -gltCode 10 'Decision : 1*DG Context : 1*PR ' \
	-gltLabel 11 'DS_SE_EA' -gltCode 11 'Decision : 1*DS Context : 1*SE' \
	-gltLabel 12 'DG_SE_EA' -gltCode 12 'Decision : 1*DG Context : 1*SE' \
	-gltLabel 13 'DS_AL-SE_EA' -gltCode 13  'Decision : 1*DS Context : 1*AL -1*SE' \
	-gltLabel 14 'DS_AL-PR_EA' -gltCode 14  'Decision : 1*DS Context : 1*AL -1*PR' \
	-gltLabel 15 'DS_PR-SE_EA' -gltCode 15  'Decision : 1*DS Context : 1*PR -1*SE' \
	-gltLabel 16 'DG_AL-SE_EA' -gltCode 16  'Decision : 1*DG Context : 1*AL -1*SE' \
	-gltLabel 17 'DG_AL-PR_EA' -gltCode 17  'Decision : 1*DG Context : 1*AL -1*PR' \
	-gltLabel 18 'DG_PR-SE_EA' -gltCode 18  'Decision : 1*DG Context : 1*PR -1*SE' \
	-mask /projects/dsnlab/shared/tds/fMRI/analysis/masks/tds1_tds2/tds1_tds2_gw_smoothed_group_average_optthr.nii \
	-dataTable 				\
	Subj Decision Context Group InputFile \
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
	376	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/376/con_0003.nii \
	376	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/376/con_0013.nii \
	376	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/376/con_0023.nii \
	376	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/376/con_0002.nii \
	376	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/376/con_0012.nii \
	376	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/376/con_0022.nii \
	378	DS	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/378/con_0003.nii \
	378	DS	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/378/con_0013.nii \
	378	DS	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/378/con_0023.nii \
	378	DG	AL	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/378/con_0002.nii \
	378	DG	PR	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/378/con_0012.nii \
	378	DG	SE	EA	/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod_tds1/378/con_0022.nii \