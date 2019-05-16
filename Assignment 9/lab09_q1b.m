%Lab 09 question 1b)
clear;
theta=45; %degrees(angle theta)
v0=25;    %25m/s (initial speed)  
initial=[0;v0*cosd(theta);2;v0*sind(theta)];
tspan=0:0.1:10; %more timespan giving a smoother curve
[t,y] = ode45(@lab09_1,tspan,initial,odeset('Events',@lab09_2));
plot(y(:,1),y(:,3))
xlabel('x, m')
ylabel('y, m')
set(gca, 'XTICK', 0:5:70)
set(gca, 'YTICK', -1:1:18)
grid on
title('trajectory of cannon ball(Q1b)')
