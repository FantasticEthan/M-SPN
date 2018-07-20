%% SETUP_mspn
%
% Setup the environment for running mspn.
%
%

if(isempty(gcp('nocreate')))
    parpool;
end

run matconvnet/matlab/vl_setupnn ;

addpath('pretraining');
addpath('tracking');
addpath('utils');
