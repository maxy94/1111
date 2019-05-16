function p = birthday(n,k,t)
same=0;                        %same=number of 'passed' tests that has at least k number with same birthday
for i=1:t                      %repeats test t times
    v=randi([1 365],1,n);      %each test generates a new set of bithday for n people.
    sv=sort(v);                %sort to rank from lowest to highest.  
    s=1;                       %s=number of people with a paticular date.
    count=0;                   %count=if it a test has >=k number of people with same birthday.(initialized as false(0))
    for ind=1:numel(sv)-1      %in each test   
        if sv(ind)==sv(ind+1)  %check every element if it's the same as the next
            s=s+1;             %if it is add one to s(variable for number of people with a particular date)
            if s==k            %if the number of people s meets the required k number, 
                count=1;       %k=1(true)
            end
        else                   %else reset s=1 for subsequent date.
            s=1;
        end
    end
    if count==1                %if count==1(true)
        same=same+1;           %same=same+1 (increase no of 'passed' test by one)
    end
end
p=same/t;                      %probability='passed' test/total tests.
end
  
