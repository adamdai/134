
family = '134';
names = {'Doc'};
group = HebiLookup.newGroupFromNames(family, names);

desiredpos = zeros(500, 1);
positions = zeros(500, 1);
time = 1;
cmd = CommandStruct();
w = 2 * pi; % f = 0.25 Hz and 1 Hz
t0 = tic();

while time < 500
    x = group.getNextFeedback().position;
    t = toc(t0);
    cmd.position = (pi / 4) * sin( w * t );
    cmd.velocity = cos( w * t ) * w;
    group.send(cmd);
    pause(0.001);
    positions(time, 1) = x;
    desiredpos(time, 1) = cmd.position;
    time = time + 1;
end

% Plot position over time
hold on
plot(positions)
plot(desiredpos)
title("Sinusoid Position vs Time (f = 1 Hz)");
ylabel("Position");
xlabel("Time");
legend("Actual", "Desired");
hold off