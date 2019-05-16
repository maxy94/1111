function ret=lab09_1(t,y)
Pair=1.2; %kg/m^3 (density air)
Cd=0.5;   %drag force coefficient
R=0.1;    %m (radius of iron ball)
V=4/3*pi*R^3; %m^3 (volume of ball)
m=7874*V;     %kg (mass of ball, derived from density*volume)
g=9.81;        %m/s^2(accleration due to gravity)
%y(1)=x,y(2)=dx/dt,y(3)=y,y(4)=dy/dt
ret(1)=y(2);  %dx/dt
ret(2)=-(0.5*pi*R^2*Pair)*(Cd/m)*(y(2)^2);
ret(3)=y(4);  %dy/dt
ret(4)=-g-(sign(y(4)))*(0.5*pi*R^2*Pair)*(Cd/m)*(y(4)^2);
ret=ret';
