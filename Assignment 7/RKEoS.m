function F=RKEoS(P,v,T)
R=0.518; %kJ/(kg K)
Tc=191; %K
Pc=4580; %kPa
a=0.427*(((R^2)*(Tc^2.5))/Pc);
b=0.0866*R*(Tc/Pc);
F=P-((R*T)/(v-b))+(a/(v*(v+b)*sqrt(T)));

%Values of Tc,Pc and R is fixed for entire question, so values of a and b
%are 'hardcoded', and does not need to be included as argument.