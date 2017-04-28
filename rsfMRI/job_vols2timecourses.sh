#!/bin/bash
#
# This converts registers the convereted volumes
# from freesurfer annots to the resting state volume output
# then extracts the timecourses
# then removed the convereted volumes for space
#

echo "job_vols2timecourses.sh ran on $(date) $line"

echo -e "\nSetting Up Freesurfer5.3"

source /home/research/tds/sMRI/scripts/SetUpFreeSurfer.sh

echo -e "\nSetting up AFNI"

export PATH="/usr/local/afni_16.1.06:${PATH}"

rsfMRIdir="/home/research/tds/rsfMRI/subjects/"
templatedir="/home/research/tds/sMRI/templates/"

echo -e "\nFreesurfer Home is $FREESURFER_HOME"
echo -e "\nFreeSurfer Output Directory is $SUBJECTS_DIR"
echo -e "\nTemplate Directory is $templatedir"
echo -e "\nTResting State Output Directory is $rsfMRIdir"

pushd $templatedir/lists
lhlabels=`cat lhlabels.txt`
rhlabels=`cat rhlabels.txt`
popd

pushd $rsfMRIdir/$SUBID/"${SUBID}".results/ && mkdir alignedrois && popd
pushd $rsfMRIdir/$SUBID/"${SUBID}".results/ && mkdir timecourses && popd

for label in $lhlabels; do
 3dAllineate -source $SUBJECTS_DIR/$SUBID/mri/fromannots/"${label}".nii.gz -master $rsfMRIdir/"${SUBID}"/"${SUBID}".results/pb03.$SUBID.r01.volreg+orig -final NN -1Dparam_apply '1D: 12@0'\' -prefix $rsfMRIdir/"${SUBID}"/"${SUBID}".results/alignedrois/"${label}"_aligned.nii.gz 

 3dmaskave -quiet -mask $rsfMRIdir/"${SUBID}"/"${SUBID}".results/alignedrois/"${label}"_aligned.nii.gz $rsfMRIdir/"${SUBID}"/"${SUBID}".results/errts."${SUBID}".fanaticor+orig > $rsfMRIdir/"${SUBID}"/"${SUBID}".results/timecourses/"${SUBID}"_"${label}".txt

 rm $rsfMRIdir/"${SUBID}"/"${SUBID}".results/alignedrois/"${label}"_aligned.nii.gz 
 rm $SUBJECTS_DIR/$SUBID/mri/fromannots/"${label}".nii.gz

done

for label in $rhlabels; do
 3dAllineate -source $SUBJECTS_DIR/$SUBID/mri/fromannots/"${label}".nii.gz -master $rsfMRIdir/"${SUBID}"/"${SUBID}".results/pb03.$SUBID.r01.volreg+orig -final NN -1Dparam_apply '1D: 12@0'\' -prefix $rsfMRIdir/"${SUBID}"/"${SUBID}".results/alignedrois/"${label}"_aligned.nii.gz 

 3dmaskave -quiet -mask $rsfMRIdir/"${SUBID}"/"${SUBID}".results/alignedrois/"${label}"_aligned.nii.gz $rsfMRIdir/"${SUBID}"/"${SUBID}".results/errts."${SUBID}".fanaticor+orig > $rsfMRIdir/"${SUBID}"/"${SUBID}".results/timecourses/"${SUBID}"_"${label}".txt

 rm $rsfMRIdir/"${SUBID}"/"${SUBID}".results/alignedrois/"${label}"_aligned.nii.gz 
 rm $SUBJECTS_DIR/$SUBID/mri/fromannots/"${label}".nii.gz

done

echo "removing alignedrois directory"
pushd $rsfMRIdir/$SUBID/"${SUBID}".results/ && rm -r alignedrois && popd

pushd $templatedir/lists
aparcrois=`cat aparcrois.txt`
aparc2009rois=`cat aparc2009rois.txt`
asegrois=`cat asegrois.txt`
popd

3dAllineate -source $SUBJECTS_DIR/$SUBID/SUMA/aparc.a2009s+aseg.nii.gz -master $rsfMRIdir/"${SUBID}"/"${SUBID}".results/pb03.$SUBID.r01.volreg+orig -final NN -1Dparam_apply '1D: 12@0'\' -prefix $rsfMRIdir/"${SUBID}"/"${SUBID}".results/aparc.a2009s+aseg_aligned.nii.gz 

3dAllineate -source $SUBJECTS_DIR/$SUBID/SUMA/aparc+aseg.nii.gz -master $rsfMRIdir/"${SUBID}"/"${SUBID}".results/pb03.$SUBID.r01.volreg+orig -final NN -1Dparam_apply '1D: 12@0'\' -prefix $rsfMRIdir/"${SUBID}"/"${SUBID}".results/aparc+aseg_aligned.nii.gz 

for aparcroi in $aparcrois; do
	3dmaskave -quiet -mrange "${aparcroi}" "${aparcroi}" -mask $rsfMRIdir/"${SUBID}"/"${SUBID}".results/aparc+aseg_aligned.nii.gz $rsfMRIdir/"${SUBID}"/"${SUBID}".results/errts."${SUBID}".fanaticor+orig > $rsfMRIdir/"${SUBID}"/"${SUBID}".results/timecourses/"${SUBID}"_aparc_"${aparcroi}".txt
done

for asegroi in $asegrois; do
	3dmaskave -quiet -mrange "${asegroi}" "${asegroi}" -mask $rsfMRIdir/"${SUBID}"/"${SUBID}".results/aparc+aseg_aligned.nii.gz $rsfMRIdir/"${SUBID}"/"${SUBID}".results/errts."${SUBID}".fanaticor+orig > $rsfMRIdir/"${SUBID}"/"${SUBID}".results/timecourses/"${SUBID}"_aseg_"${asegroi}".txt
done

for aparc2009roi in $aparc2009rois; do
	3dmaskave -quiet -mrange "${aparc2009roi}" "${aparc2009roi}" -mask $rsfMRIdir/"${SUBID}"/"${SUBID}".results/aparc.a2009s+aseg_aligned.nii.gz $rsfMRIdir/"${SUBID}"/"${SUBID}".results/errts."${SUBID}".fanaticor+orig > $rsfMRIdir/"${SUBID}"/"${SUBID}".results/timecourses/"${SUBID}"_aparc2009_"${aparc2009roi}".txt
done

echo "job_vols2timecourses.sh finished on $(date) $line"