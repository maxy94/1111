function L=ladderOpti(a,t,L) %a is angle alpha and t is angle theta (both in degrees)
w1=2;%m, hardcoded for w1=w2=2m in this question
w2=2;%m
L=(w1/sind(t))+(w2/sind(180-a-t)); %pi=180 degrees