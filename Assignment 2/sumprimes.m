function sum=sumprimes(n) %n>1
i=2;
sum=0;
while (n~=1)
    if rem(n,i)==0
        sum=sum+i;
        n=n/i;        
    else
        i=i+1;
    end
end