function m=mymagic(n)
m=zeros(n);
r=1;
c=(n+1)/2;
for i=1:(n^2)
    m(r,c)=i;
    r=r-1;
    c=c+1;
    if c>n & r==0   %for c>n and r==0, it came from a filled (r=1 and c=n)
        r=r+2;      %Tracing this back,it came from a filled (r=n and c=1)
        c=c-1;      %Thus, since c>n & r==0 wrapped will be at (r=n and c=1),
    end             %which is will be filled, we can directly use the m(r,c)~=0 condition for (c>n & r==0)
    if r==0
        r=n;
    end
    if c>n
        c=1;
    end
    if m(r,c)~=0
        r=r+2;
        c=c-1;
        if c==0; 
            c=n;
        end
    end
end

        
    