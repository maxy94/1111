function sum=sum_odd_series(n)
i=1;
sum=0;
while i<=(2*n-1) %2n-1 will be equal to nth term of this series.
    sum=sum+i;
    i=i+2;
end