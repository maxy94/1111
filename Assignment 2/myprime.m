function primeNo=myprime(n) %n>1
d=n-1;                      %d=divisor of n which is n-1
r=1;                        %r=1 so that we can use while r~=0
while r~=0
    r=rem(n,d);             %if reminder is not 0,
    d=d-1;                  %decrease divisor d by 1, and loop, stop at r==0
end
if d==0                     %when r==0 and loop stops,and divisor d becomes 0,
    primeNo=true;           %it means the only number that can divide by n is 1 and n, Therefore,myprime(n) will be true.
else
    primeNo=false;          %else if the reminder r becomes 0 when d~=0,it means myprime(n) is false.

end
end

   
   
