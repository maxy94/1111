%Part 1)Polyfit 
clear;
load lab08data.mat
p=polyfit(x,y,2) 
%using N=2 will retuen 3 coeffcients(in vector P) of the polynomial P to the 2nd degree.
%ie: coeffcients in p will be: p(1)*x^2+p(2)*x+p(3). (similar to part c eqn)
%based on output p
%k1=0.0400
%k2=-0.8129
%k3=11.8961
%These value agrees with part c values for k1,k2 and k3

%Part 2)Polyval
%Find the y value using polynomial p at x=4.3 
Y_value=polyval(p,4.3)
%Value of y when x=4.3 is 9.1392
    