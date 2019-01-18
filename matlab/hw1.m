% function [] = startup()
%     % startup sets up libraries and should be started once on startup.
%     currentDir = fileparts(mfilename('fullpath'));
%     addpath(fullfile(currentDir , 'hebi'));
%     hebi_load(); % explicitely pre-load library
% end

family = '134';
names = {'Doc'};
group = HebiLookup.newGroupFromNames(family, names);

positions = zeros(2000, 1);
time = 1;
cmd = CommandStruct();
w = 2 * pi * 0.25; % f = 0.25 Hz and 1 Hz
t0 = tic();

while time < 2000
    x = group.getNextFeedback().position;
    t = toc(t0);
    cmd.position = (pi / 4) * sin( w * t );
    cmd.velocity = cos( w * t ) * w;
    group.send(cmd);
    pause(0.001);
    positions(time, 1) = x;
    time = time + 1;
end

% Plot position over time
plot(positions)
title("Position over Time");
ylabel("Position");
xlabel("Time");