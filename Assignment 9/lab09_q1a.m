%Lab 09 question 1a)
theta=45; %degrees(angle theta)
v0=25;    %25m/s (initial speed)  
initial=[0;v0*cosd(theta);2;v0*sind(theta)];
tspan=0:0.1:10; %having more timespan values to figure out when ball hits the ground more accurately 
[t,out]=ode45(@lab09_1,tspan,initial) %Do not supress output to check for y values close to 0.

%Plotting for trajectory
plot(out(:,1),out(:,3))
xlabel('x, m')
ylabel('y, m')
set(gca, 'XTICK', 0:5:180)
set(gca, 'YTICK', -320:20:50)
grid on
title('trajectory of cannon ball(Q1a)')

%A trajectory path the cannon ball takes is reflected on the graph, but the
%trajectory graph does not stop when it should have hit the ground(ie: at
%y=0 the second time).

%To find when the ball hits the ground we need to find corresponding t value
%when y is near 0 and y value for following t+1 value is less than 0.
%For this example, when y=0.1142, the cannon ball is close to the ground.
%This is an index search method
[row, col]=find(abs(out-0.1142) < 0.001); %finding the row and column of the value where y=0.1142
t(row) %figure out the corresponding t-value at that row.

%At time t=3.7s, the ball will hit the ground.
