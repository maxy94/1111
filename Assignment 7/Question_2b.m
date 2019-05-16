%Question 2b)
%for 400K, 600K and 800K
clf;
T=400:200:800; %K
P=10000:10000:250000; %kPa
x=P;
y=loop2b(P,T); %creates a 'matrix' of values for v. each row represents 400K,600K,800K
%Plot for T=400K
hold on
plot(x,y(1,1:end),'b')
plot(x,y(2,1:end),'g')
plot(x,y(3,1:end),'r')
legend('T=400K','T=600K','T=800K')
set(gca, 'XTICK', 10000:10000:250000)
set(gca, 'YTICK', 0:0.005:0.045)
grid on
xlabel('Pressure P (kPa)')
ylabel('volume per kg v (m^3/kg)')
title('graph of volume versus pressure')

