function [dummy,terminate,direction] = lab09_2(t,y) %NOTE that this M-file accepts exactly the same input as the UDF
dummy = y(3); % When dummy = 0 ---> y(3) = 0, which is the ground level (Y = 0)! This must coresspond to the y defined in origina UDF file
terminate = 1; % When terminate is SET to 1, ode45 will automatically STOP
% when dummy = 0; when terminate is SET to 0, it is business
% as usual, and ode45 will stop only when the simulation
% end time is reached
direction = -1; % When direction is SET to -1, ode45 stops only when 'dummy'
% crosses 0 in the 'negative' direction 