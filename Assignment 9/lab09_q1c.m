%Lab 09 question 1b)
clear;
v0=25;    %m/s (initial speed)
i=1;
for theta=0:20:80; %degrees(angle theta)
    initial=[0;v0*cosd(theta);2;v0*sind(theta)];
    tspan=0:0.1:10; %more timespan giving a smoother curve
    [t,y] = ode45(@lab09_1,tspan,initial,odeset('Events',@lab09_2));
    hold on
    X(i)=plot(y(:,1),y(:,3)); %Put each line from loop into an array X(ie:1st loop=X(1), 2nd loop=X(2)....) so that legend can be assigned.
    i=i+1;                    %add into i so that array X can be used.
end
legend([X(1),X(2),X(3),X(4),X(5)],'Launch Angle=0degree','Launch Angle=20degree','Launch Angle=40degree','Launch Angle=60degree','Launch Angle=80degree');
xlabel('x, m')
ylabel('y, m')
set(gca, 'XTICK', 0:5:70)
set(gca, 'YTICK', 0:1:35)
grid on
title('trajectory of cannon ball at various angles(Q1c)')

%Another way to do this legend is to put each loop of data of x and y into
%another array 'eg: A' and use plot function 5 times for each of set of x
%and y values. Then, use legend as per normal for subplotting.