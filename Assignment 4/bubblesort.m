function x = bubblesort(x)
k=1;
sorted=0;
while sorted==0                 %looping will proceed as x is not sorted(sorted=0)
    sorted=1;                   %sorted is initialized as 1(true) every loop
    for i=1:(numel(x)-k)        %k should get bigger with each loop      
        if x(i)>x(i+1)          %this 'if' portion will sort out the highest value to be the end last value.
            t=x(i);    
            x(i)=x(i+1);
            x(i+1)=t;
            sorted=0;           %if there is sorting involved then sorted=0 and loop will proceed.
        end                     %if there is no sorting involved sorted will remain as 1 and thus while loop stops. 
    end
    k=k+1;                      %we will ignore the last sorted value with each loop since it will be sorted
end                             %to be the highest value.
        

        