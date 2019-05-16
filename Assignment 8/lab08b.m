k=[1 1 1]; %initial guess
optiK=fminsearch(@lab08a,k) %find Optimal k values for minimal F value)
%optimum k values:
%k1=5.0000
%k2=-0.2000
%k3=7.0000
load lab08data.mat
model_y=(optiK(1)*(exp(optiK(2)*x)))+optiK(3); %getting values of model y based on optimal k values 
%Plotting graph
hold on
scatter(x,y)
plot(x,model_y)
grid on
legend('scatter of x,y data','Graph based on model')
xlabel('x')
ylabel('y')
title('Data Scatter and Model Graph(Part b)')

%Comments: Values from model Curve fits the data very closely.