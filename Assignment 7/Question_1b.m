%Question 1b)
%Y-axis of graph will be f(x)=(300000/(1+29*exp(-0.08*x))-(90000*exp(-0.045*x))-120000
%x-axis of graph will be x=38:0.01:42, where x=time
%To VERIFY our answer, we plot x such that x=34:0.01:38
clf;
x=38:0.1:42;
y=(300000./(1+29*(exp(-0.08*x))))-(90000*(exp(-0.045*x)))-120000;
plot(x,y)
set(gca, 'XTICK', 38:0.1:42)
xlabel('number of years, t')
ylabel('f(x)')
grid on
%By observing the graph where f(x)=0,
%we can deduce the value of t which corresponds to f(x)=0
%From the graph, x=39.6 corresponds to f(x)=0. Therefore, we can verify
%that the answer to 1a) where t=39.6068 years is correct.