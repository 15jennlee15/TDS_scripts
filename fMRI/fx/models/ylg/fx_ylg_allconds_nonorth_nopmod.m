%-----------------------------------------------------------------------
% Job saved on 21-Mar-2017 14:57:27 by cfg_util (rev $Rev: 6460 $)
% spm SPM - SPM12 (6906)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/shared/tds/fMRI/subjects_tds2/101/stop3'};
matlabbatch{1}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^swrustop3*';
matlabbatch{1}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/shared/tds/fMRI/subjects_tds2/101/stop4'};
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^swrustop4*';
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{3}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/shared/tds/fMRI/subjects_tds2/101/stop5'};
matlabbatch{3}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^swrustop5*';
matlabbatch{3}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{4}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/shared/tds/fMRI/subjects_tds2/101/stop6'};
matlabbatch{4}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^swrustop6*';
matlabbatch{4}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{5}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/shared/tds/fMRI/subjects_tds2/101/stop7'};
matlabbatch{5}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^swrustop7*';
matlabbatch{5}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{6}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/shared/tds/fMRI/subjects_tds2/101/stop8'};
matlabbatch{6}.cfg_basicio.file_dir.file_ops.file_fplist.filter = '^swrustop8*';
matlabbatch{6}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{7}.spm.stats.fmri_spec.dir = {'/projects/dsnlab/shared/tds/fMRI/analysis/fx/models/ylg/fx_ylg_allconds_nonorth_nopmod/101'};
matlabbatch{7}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{7}.spm.stats.fmri_spec.timing.RT = 2;
matlabbatch{7}.spm.stats.fmri_spec.timing.fmri_t = 72;
matlabbatch{7}.spm.stats.fmri_spec.timing.fmri_t0 = 36;
matlabbatch{7}.spm.stats.fmri_spec.sess(1).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^swrustop3*)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{7}.spm.stats.fmri_spec.sess(1).scans(2) = cfg_dep('File Selector (Batch Mode): Selected Files (^swrustop4*)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{7}.spm.stats.fmri_spec.sess(1).cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
matlabbatch{7}.spm.stats.fmri_spec.sess(1).multi = {'/projects/dsnlab/shared/tds/fMRI/analysis/fx/multicond/ylg/pmods_to_conditions/multicond_decout_pmod_101_stopALONE.mat'};
matlabbatch{7}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
matlabbatch{7}.spm.stats.fmri_spec.sess(1).multi_reg = {'/projects/dsnlab/shared/tds/fMRI/analysis/fx/motion/auto-motion-output/tdsall/rp_auto_txt/rp_101_alone.txt'};
matlabbatch{7}.spm.stats.fmri_spec.sess(1).hpf = 128;
matlabbatch{7}.spm.stats.fmri_spec.sess(2).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^swrustop5*)', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{7}.spm.stats.fmri_spec.sess(2).scans(2) = cfg_dep('File Selector (Batch Mode): Selected Files (^swrustop6*)', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{7}.spm.stats.fmri_spec.sess(2).cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
matlabbatch{7}.spm.stats.fmri_spec.sess(2).multi = {'/projects/dsnlab/shared/tds/fMRI/analysis/fx/multicond/ylg/pmods_to_conditions/multicond_decout_pmod_101_stopPEER.mat'};
matlabbatch{7}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
matlabbatch{7}.spm.stats.fmri_spec.sess(2).multi_reg = {'/projects/dsnlab/shared/tds/fMRI/analysis/fx/motion/auto-motion-output/tdsall/rp_auto_txt/rp_101_peer.txt'};
matlabbatch{7}.spm.stats.fmri_spec.sess(2).hpf = 128;
matlabbatch{7}.spm.stats.fmri_spec.sess(3).scans(1) = cfg_dep('File Selector (Batch Mode): Selected Files (^swrustop7*)', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{7}.spm.stats.fmri_spec.sess(3).scans(2) = cfg_dep('File Selector (Batch Mode): Selected Files (^swrustop8*)', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{7}.spm.stats.fmri_spec.sess(3).cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
matlabbatch{7}.spm.stats.fmri_spec.sess(3).multi = {'/projects/dsnlab/shared/tds/fMRI/analysis/fx/multicond/ylg/pmods_to_conditions/multicond_decout_pmod_101_stopEXCL.mat'};
matlabbatch{7}.spm.stats.fmri_spec.sess(3).regress = struct('name', {}, 'val', {});
matlabbatch{7}.spm.stats.fmri_spec.sess(3).multi_reg = {'/projects/dsnlab/shared/tds/fMRI/analysis/fx/motion/auto-motion-output/tdsall/rp_auto_txt/rp_101_excl.txt'};
matlabbatch{7}.spm.stats.fmri_spec.sess(3).hpf = 128;
matlabbatch{7}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{7}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
matlabbatch{7}.spm.stats.fmri_spec.volt = 1;
matlabbatch{7}.spm.stats.fmri_spec.global = 'None';
matlabbatch{7}.spm.stats.fmri_spec.mthresh = -Inf;
matlabbatch{7}.spm.stats.fmri_spec.mask = {'/projects/dsnlab/shared/tds/fMRI/analysis/masks/tds2/tds2_gw_smoothed_group_average_optthr.nii,1'};
matlabbatch{7}.spm.stats.fmri_spec.cvi = 'AR(1)';
matlabbatch{8}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{8}.spm.stats.fmri_est.write_residuals = 1;
matlabbatch{8}.spm.stats.fmri_est.method.Classical = 1;