family = '134';
names = {'Doc'};
group = HebiLookup.newGroupFromNames(family, names);

gains = group.getGains();
% zero posiion and velocity gains
gains.positionKp = 0;
gains.velocityKp = 0;
group.send('gains', gains);

while true
    x = group.getNextFeedback().position;
    cmd.effort = 3.0 * sin(x);
    disp(cmd.effort);
    group.send(cmd);
end

% Plot position over time
% hold on
% plot(positions)
% %plot(desiredpos)
% title("Sinusoid Position vs Time (f = 1 Hz)");
% ylabel("Position");
% xlabel("Time");
% legend("Actual", "Desired");
% hold off