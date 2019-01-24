family = '134';
names = {'Doc'};
group = HebiLookup.newGroupFromNames(family, names);

cmd = CommandStruct();
cmd.velocity = 0.25;
group.send(cmd);

while true
    
end