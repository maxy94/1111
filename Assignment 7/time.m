function P=time(x)
P=(300000/(1+29*(exp(-0.08*x))))-(90000*(exp(-0.045*x)))-120000; %this is f(x)=0