
family = '134';
names = {'Doc'};
group = HebiLookup.newGroupFromNames(family, names);

gains = actuator.getGains();
% Double position P gain
gains.positionKp = 1.5;
% % Halve velocity v gain
gains.velocityKp = 0.1;
actuator.send('gains', gains);

desiredpos = zeros(500, 1);
positions = zeros(500, 1);

%desired_effort = zeros(500, 1);
efforts = zeros(1000, 1);

time = 1;
cmd = CommandStruct();
w = 2 * pi * 0.1; % f = 0.25 Hz and 1 Hz
t0 = tic();

scan_speed = 0.75;
scan_range = 1.4;

x = actuator.getNextFeedback().position;
direction = - sign(x);
hit_bound = abs(x) > scan_range;

while true 
%     x = actuator.getNextFeedback().position;
%     v = actuator.getNextFeedback().velocity;
%     t = toc(t0);
%     cmd.position = (pi / 2) * sin( w * t );
%     cmd.velocity = cos( w * t ) * w;
%     actuator.send(cmd);
%     pause(0.001);
%     positions(time, 1) = v;
%     desiredpos(time, 1) = cmd.position;
    time = time + 1;
    e = actuator.getNextFeedback().effort;
    efforts(time) = e;
    
    disp(e);
    x = actuator.getNextFeedback().position;
    
    if ((abs(x) > scan_range && ~hit_bound) || ((abs(e - 0.9 * sin(x)) > 1.1) && ~hit_bound))
        hit_bound = true;
        direction = direction * -1;
    elseif abs(x) < scan_range
        hit_bound = false;
    end

    cmd.velocity = scan_speed * direction;
    %actuator.setCommandLifetime(1.5);
    actuator.send(cmd);
    disp('scanning')

end

% Plot position over time
hold on
plot(efforts)
%plot(desiredpos)
title("Sinusoid Position vs Time (f = 1 Hz)");
ylabel("Position");
xlabel("Time");
%legend("Actual");
hold off