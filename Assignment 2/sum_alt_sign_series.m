function sum=sum_alt_sign_series(n)
i=1;
sum=0;
while (abs(i))<=(2*n-1) %By taking the absolute of i, we can use it in the same manner as b), since i will be altenating in signs,
      sum=sum+i;
    if i>=0             %if i is positive, the next term is negative, thus we multiply by -1 to the abs(i)+2
        i=(abs(i)+2)*-1; 
    else
        i=abs(i)+2;     %Else if i is negative,there is no need to multiply abs(i)+2 by -1, since it is already positive.
    end
end