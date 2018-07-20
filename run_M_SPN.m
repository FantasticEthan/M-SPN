function results=run_M_SPN(seq, res_path, bSaveImage)

close all

if(isempty(gcp('nocreate')))
    parpool;
end

run matconvnet/matlab/vl_setupnn ;

addpath('pretraining');
addpath('tracking');
addpath('utils');

s_frames = seq.len;
%net = fullfile('models','mspn_otb-vot15.mat');
 net = fullfile('models','M-SPN1.0.mat');

config.imgList = parseImg(seq.path);

config.gt = seq.rect_all;

[rect_position, fps] = mspn_run(s_frames,config.imgList,config.gt(1,:),net);


disp(['fps: ' num2str(fps)])

results.type = 'rect';
results.res = rect_position;%each row is a rectangle
results.fps = fps;

end