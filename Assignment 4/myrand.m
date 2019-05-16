function ret = myrand(u,v,m,n) %u=mean , v=variance
a=(2*u-(sqrt(12*v)))/2;        %a formula derived from given equations
b=((sqrt(12*v))+2*u)/2;        %b formula derived from given equations
ret=rand(m,n).*(b-a)+a;