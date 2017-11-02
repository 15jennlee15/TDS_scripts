%-----------------------------------------------------------------------
% Job saved on 30-Apr-2017 22:30:59 by cfg_util (rev $Rev: 6460 $)
% spm SPM - SPM12 (6906)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/shared/tds/fMRI/subjects_tdsall'};
matlabbatch{1}.cfg_basicio.file_dir.file_ops.file_fplist.filter = 'rc1mprage.nii';
matlabbatch{1}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPListRec';
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/shared/tds/fMRI/subjects_tdsall'};
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.filter = 'rc2mprage.nii';
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPListRec';
matlabbatch{3}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/shared/tds/fMRI/subjects_tdsall'};
matlabbatch{3}.cfg_basicio.file_dir.file_ops.file_fplist.filter = 'rc3mprage.nii';
matlabbatch{3}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPListRec';
matlabbatch{4}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/shared/tds/fMRI/subjects_tdsall'};
matlabbatch{4}.cfg_basicio.file_dir.file_ops.file_fplist.filter = 'rc4mprage.nii';
matlabbatch{4}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPListRec';
matlabbatch{5}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/shared/tds/fMRI/subjects_tdsall'};
matlabbatch{5}.cfg_basicio.file_dir.file_ops.file_fplist.filter = 'rc5mprage.nii';
matlabbatch{5}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPListRec';
matlabbatch{6}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/shared/tds/fMRI/subjects_tdsall'};
matlabbatch{6}.cfg_basicio.file_dir.file_ops.file_fplist.filter = 'rc6mprage.nii';
matlabbatch{6}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPListRec';
matlabbatch{7}.spm.tools.dartel.warp.images{1}(1) = cfg_dep('File Selector (Batch Mode): Selected Files (rc1mprage.nii)', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{7}.spm.tools.dartel.warp.images{2}(1) = cfg_dep('File Selector (Batch Mode): Selected Files (rc2mprage.nii)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{7}.spm.tools.dartel.warp.images{3}(1) = cfg_dep('File Selector (Batch Mode): Selected Files (rc3mprage.nii)', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{7}.spm.tools.dartel.warp.images{4}(1) = cfg_dep('File Selector (Batch Mode): Selected Files (rc4mprage.nii)', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{7}.spm.tools.dartel.warp.images{5}(1) = cfg_dep('File Selector (Batch Mode): Selected Files (rc5mprage.nii)', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{7}.spm.tools.dartel.warp.images{6}(1) = cfg_dep('File Selector (Batch Mode): Selected Files (rc6mprage.nii)', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{7}.spm.tools.dartel.warp.settings.template = 'tdsall_template';
matlabbatch{7}.spm.tools.dartel.warp.settings.rform = 0;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(1).its = 3;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(1).rparam = [4 2 1e-06];
matlabbatch{7}.spm.tools.dartel.warp.settings.param(1).K = 0;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(1).slam = 16;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(2).its = 3;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(2).rparam = [2 1 1e-06];
matlabbatch{7}.spm.tools.dartel.warp.settings.param(2).K = 0;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(2).slam = 8;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(3).its = 3;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(3).rparam = [1 0.5 1e-06];
matlabbatch{7}.spm.tools.dartel.warp.settings.param(3).K = 1;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(3).slam = 4;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(4).its = 3;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(4).rparam = [0.5 0.25 1e-06];
matlabbatch{7}.spm.tools.dartel.warp.settings.param(4).K = 2;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(4).slam = 2;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(5).its = 3;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(5).rparam = [0.25 0.125 1e-06];
matlabbatch{7}.spm.tools.dartel.warp.settings.param(5).K = 4;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(5).slam = 1;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(6).its = 3;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(6).rparam = [0.25 0.125 1e-06];
matlabbatch{7}.spm.tools.dartel.warp.settings.param(6).K = 6;
matlabbatch{7}.spm.tools.dartel.warp.settings.param(6).slam = 0.5;
matlabbatch{7}.spm.tools.dartel.warp.settings.optim.lmreg = 0.01;
matlabbatch{7}.spm.tools.dartel.warp.settings.optim.cyc = 3;
matlabbatch{7}.spm.tools.dartel.warp.settings.optim.its = 3;
matlabbatch{8}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.parent = {'/projects/dsnlab/shared/tds/fMRI/subjects_tdsall'};
matlabbatch{8}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.name = 'dartel_template';
matlabbatch{9}.cfg_basicio.file_dir.file_ops.file_move.files(1) = cfg_dep('Run Dartel (create Templates): Template (Iteration 0)', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','template', '()',{1}));
matlabbatch{9}.cfg_basicio.file_dir.file_ops.file_move.files(2) = cfg_dep('Run Dartel (create Templates): Template (Iteration 1)', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','template', '()',{2}));
matlabbatch{9}.cfg_basicio.file_dir.file_ops.file_move.files(3) = cfg_dep('Run Dartel (create Templates): Template (Iteration 2)', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','template', '()',{3}));
matlabbatch{9}.cfg_basicio.file_dir.file_ops.file_move.files(4) = cfg_dep('Run Dartel (create Templates): Template (Iteration 3)', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','template', '()',{4}));
matlabbatch{9}.cfg_basicio.file_dir.file_ops.file_move.files(5) = cfg_dep('Run Dartel (create Templates): Template (Iteration 4)', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','template', '()',{5}));
matlabbatch{9}.cfg_basicio.file_dir.file_ops.file_move.files(6) = cfg_dep('Run Dartel (create Templates): Template (Iteration 5)', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','template', '()',{6}));
matlabbatch{9}.cfg_basicio.file_dir.file_ops.file_move.files(7) = cfg_dep('Run Dartel (create Templates): Template (Iteration 6)', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','template', '()',{7}));
matlabbatch{9}.cfg_basicio.file_dir.file_ops.file_move.action.moveto(1) = cfg_dep('Make Directory: Make Directory ''dartel_template''', substruct('.','val', '{}',{8}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dir'));
