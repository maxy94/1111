%Question 2a)
%We let F=P-(R*T/(v-b))+(a/(v*(v+b)*sqrt(T)))
%This is defined in R-KEoS.m %R-K Equation of State
T=400; %K
P=10000:10000:250000; %kPa
x=P;
y=loop2a(P,T);
plot(x,y,'b')
legend('T=400K')
set(gca, 'XTICK', 10000:10000:250000)
set(gca, 'YTICK', 0:0.001:0.02)
grid on
xlabel('Pressure P (kPa)')
ylabel('volume per kg v (m^3/kg)')
title('graph of volume versus pressure')