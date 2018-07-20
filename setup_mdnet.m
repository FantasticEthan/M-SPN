%% SETUP_mspn
%
% Setup the environment for running mspn.
%
% Hyeonseob Nam, 2015 
%

if(isempty(gcp('nocreate')))
    parpool;
end

run matconvnet/matlab/vl_setupnn ;

addpath('pretraining');
addpath('tracking');
addpath('utils');
