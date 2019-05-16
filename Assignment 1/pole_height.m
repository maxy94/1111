%Assignment 1 - Question 3
%Equation with angles converted from degree to radians using function convert_radian 

function height= pole_height(length_d,alpha,beta)                         %length_d=d , alpha=angle alpha , beta=angle beta
alphaRadian=alpha*(pi/180);                                               %radian=degree*(pi/180)
betaRadian=beta*(pi/180);
top=length_d*sin(alphaRadian)*sin(betaRadian);                            %top part of the equation, dsin(alpha)sin(beta)
bottom=sqrt((sin(alphaRadian+betaRadian))*(sin(alphaRadian-betaRadian))); %bottom part of equation, sqrt((sin(alpha+beta))*(sin(alpha-beta)))
height=top/bottom;                                                        %original equation will be top/bottom

end
