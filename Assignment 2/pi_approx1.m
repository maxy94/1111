function sum=pi_approx1(n)
i=1;
sum=0;
while (1/abs(i))>=(1/(2*n-1)) %The >= operator is used because we are dealing with fractions, and 1/abs(i) will always be bigger until it reaches 1/(2*n-1)
      sum=sum+(4/i);          %Every nth term is essentially 4*(1/i). Therefore, we can use 4/i in the sum.
    if i>=0                   %This follows part c.
        i=(abs(i)+2)*-1; 
    else
        i=abs(i)+2;    
    end
end
end