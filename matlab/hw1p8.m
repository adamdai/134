
family = '134';
names = {'Doc'};
group = HebiLookup.newGroupFromNames(family, names);

gains = group.getGains();
% Double position P gain
gains.positionKp = 1;
% % Halve velocity v gain
gains.velocityKp = 0.05 * 1000;
group.send('gains', gains);

positions = zeros(500, 1);
time = 1;
cmd = CommandStruct();
t0 = tic();

while time < 500
    x = group.getNextFeedback().position;
    t = toc(t0);
    if time == 250
        cmd.position = x + 5 * (pi / 180);
    end
    group.send(cmd);
    pause(0.001);
    positions(time, 1) = x;
    time = time + 1;
end

% Plot position over time
plot(positions)
title("5 degree Step Response (position Kp = 1, velocity Kp = 50)");
ylabel("Position");
xlabel("Time");