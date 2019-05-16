% lab 4 task 2

%{
Hints :
Let the volume of material hauled from pits 1, 2 and 3 be X, Y and Z
cubic meters respectively. 
Set up a linear equations in X, Y and Z and (use MATLAB) to
solve for X, Y and Z
%}

clear; clc; % good practice to clear first

%{
Fill in the mathematical equations that you will use here.
Let x1, x2 and x3 be the amount hauled from pit 1,2 and 3 respectively.
Therefore,
0.55*x1 + 0.25*x2 + 0.25*x3 = 4800
0.30*x1 + 0.45*x2 + 0.20*x3 = 5800
0.15*x1 + 0.30*x2 + 0.55*x3 = 5700


%}

A = [0.55 0.25 0.25;0.30 0.45 0.20;0.15 0.30 0.55];
b = [4800;5800;5700];
x=A\b

%The engineer needs 2416.7 m^3 from pit 1 , 9193.3 m^3 from pit 2 and 4690.0 m^3 from pit 3.