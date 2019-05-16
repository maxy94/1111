function a = my_gcd2(a,b)
r=1; %Sets a value for r(remainder) so that we can use while r~=0 to check for rem(a,b)~=0
while r~=0
    r=rem(a,b); %function to get r(remainder of a/b) value
    a=b;        %a becomes b
    b=r;        %b takes on value of remainder r.
if r==0
    a=a;        %if remainder becomes 0, the value of a is the answer/output.
end
end
end


