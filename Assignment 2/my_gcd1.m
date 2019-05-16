function d = my_gcd1(a,b) 
if a>b
    d=b;
else
    d=a; %Smaller value of a or b is taken as d.
end
while (rem(a,d)~=0) | (rem(b,d)~=0) %If remainder of a/d or b/d is not 0, we reduce d by 1 and repeat.
d=d-1;
end
end
