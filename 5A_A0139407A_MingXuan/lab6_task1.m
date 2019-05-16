clear; clc;
%{ 
Instructions :
Do not delete existing ';' or add ';'
Do not modify any existing command
You are free to add in your own comments for your own revision
%}

%% part (i)

% Do not hardcode your constants else they become meaningless numbers
% It also becomes really troublesome when your variables change values
% or if you have multiple equations that use the same variables..
% Add in all the other variables you need
% Remember to note down the units for every variable!

Wsmoker = 1000;         % Wsmoker=mg/hr
Wgrill = 2000;          % Wgrill=mg/hr
QA = 200;               %QA=m^3/hr
CA = 2;                 %CA=mg/m^3
QB = 50;                %QB=m^3/hr
CB = 2;                 %CB=mg/m^3
QC = 150;               %QC=m^3/hr
QD = 100;               %QD=m^3/hr
E13 = 25;               %E13=m^3/hr
E34 = 50;               %E34=m^3/hr
E24 = 25;               %E24=m^3/hr


%{
Fill in the mathematical equations that you will use here.
No need for proper Matlab syntax.

Ie, (A+B)x + CDy - 15z = 32 where A, B, C and D are constants


-(E13+QA)C1 +0*C2 + E13C3 +0*C4 = -(Wsmoker +QACA )
0*C1-(E24+QC)C2+0*C3+(QA-QD+E24)C4 = -QBCB
(QA+E13)C1+0*C2-(E13+E34+QA)C3 + (E34)C4 = -Wgrill
0*C1+(E24)C2+(E34+QA)C3-(E34+E24+QA)C4 = 0
%}

A = [-(E13+QA) 0 E13 0; 0 -(E24+QC) 0 (QA-QD+E24); (QA+E13) 0 -(E13+E34+QA) E34; 0 E24 (E34+QA) -(E34+E24+QA)] ;
B = [-(Wsmoker+QA*CA); -QB*CB; -Wgrill; 0];
c = A\B

format shortg

AInv = inv(A);% store your inverse matrix of A in AInv.

%{
Fill in the values of your answers below. Remember to include the units!

[CO] in section 1 is 8.0996 mg/m^3
[CO] in section 2 is 12.3448 mg/m^3
[CO] in section 3 is 16.8966 mg/m^3
[CO] in section 4 is 16.4828 mg/m^3
%}

%% part (ii)
disp('Part (ii)')
format short

% C2,smokers = -a21^-1 * Wsmokers
C2smoker= -(AInv(2,1)*1000)
% C2,grill = -a23^-1 * Wgrill
C2grill= -(AInv(2,3)*2000)
% C2,air intakes = -a21^-1 * QACA + -a22^-1 * QBCB
C2intakes= -(AInv(2,1)*200*2)-(AInv(2,2)*50*2)

%{
Fill in the values of your answers below. Remember to include the units!

Contribution of smokers :3.4483 mg/m^3
Contribution of grills :6.8966 mg/m^3
Contribution of air-intake:2 mg/m^3
Percentage contributions of smokers: 27.9%
Percentage contributions of grills:55.9%
Percentage contributions of air-intake:16.2%
%}


%{
The significance of this formula is that if the values of the constants
Wsmoker, Wgrill, CA and CB change, we can still compute the value of 
c(2) (without resolving the system). Note that this is possible because
the matrix A is independent of these 4 constants.
This will be useful in part (iii) later.
%}
       
%% part (iii)

% Method 1 : When the input values change ... just re-solve the system by
% altering the necessary constants.

Wgrill = 0;
Wsmoker = 0;
A = [-(E13+QA) 0 E13 0; 0 -(E24+QC) 0 (QA-QD+E24); (QA+E13) 0 -(E13+E34+QA) E34; 0 E24 (E34+QA) -(E34+E24+QA)] ;
B = [-(Wsmoker+QA*CA); -QB*CB; -Wgrill; 0];
c = A\B
format shortg
%{
change in concentration will be : 2 mg/m^3 (From 12.345 mg/m^3, a decrease of 10.345 mg/m^3) 
%}


% Method 2 : use the formula given in (ii)
%with Wgrill and Wsmoker both equals 0, only source of CO will be from air
%intake. ie: New C2=C2intake
C2intakes= -(AInv(2,1)*200*2)-(AInv(2,2)*50*2)


%{
change in concentration will be : 2 mg/m^3 (From 12.345 mg/m^3, a decrease of 10.345 mg/m^3) 
%}

%% part (iv)

E24 = 5;
Wsmoker=1000;
Wgrill=2000;
A = [-(E13+QA) 0 E13 0; 0 -(E24+QC) 0 (QA-QD+E24); (QA+E13) 0 -(E13+E34+QA) E34; 0 E24 (E34+QA) -(E34+E24+QA)] ;
B = [-(Wsmoker+QA*CA); -QB*CB; -Wgrill; 0];
c = A\B
format shortg

%New concentration of CO in kid's section, C2 is 12.080mg/m^3.
%This method is not effective as there is only a small decrease in
%concentration  from the original 12.3448mg/m^3, and therefore, does not
%solve this problem.