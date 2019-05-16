%Question 1a)
%Using values stated in the question,
%Ps(t)=300000/(1+29*e^(-0.08*t))
%Pu(t)=(75000*e^(-0.045*t))+100000

%Since Ps(t) is 20% larger than Pu(t)
%Ps(t)=1.2*Pu(t)
%Then, f(x)=Ps(t)-1.2*Pu(t)=0
%'x' in this case will be 't' or time(years).
%Therefore, after substituting the values,
%f(x)=(300000/(1+29*exp(-0.08*x))-(90000*exp(-0.045*x))-120000
%f(x) is defined in 'time.m' function file

t=fsolve(@time,10)
%Answer is time t=39.6068 years
%For the corresponding values of Pu and Ps,
Ps=300000/(1+29*(exp(-0.08*t)))   %Population of Suburban
Pu=(75000*(exp(-0.045*t)))+100000 %Population of Urban
%Population of Suburban=135140
%Population of Urban=112620


%Using several guesses such as 0,50 and 400 all yield t=39.6068years as the
%answer while using 500 or 8000 yields 500 or 8000 respectively.
%This means that there is only one answer t, where t>=0 (since t is number of
%years, it must be positive). Thus, only when t=39.6068 years will the
%population of suburban be 20% larger than urban, and from then on, the
%difference in suburban and urban gets larger with suburban being the
%larger one. The reason for this is because Suburban population is getting
%larger while Urban poulation is getting smaller, so from t=39.6068 years
%onwards, the difference in the two populations is getting larger than 20%.