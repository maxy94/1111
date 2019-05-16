function approx=pi_approx2(t)
i=1;
sum=0;
while (abs(4/i))>=t  %Absolute difference between last two terms |pi(i)-pi(i-1)| equals (abs(4/i)).Thus we loop the approximation until
    sum=sum+(4/i);   %abs(4/i) is less than t.       
    if i>=0                   
        i=(abs(i)+2)*-1; 
    else
        i=abs(i)+2; 
        
    end
    if abs(4/i)<t         %Since the sum would stop looping when abs(4/i)<t, where the output would have the absoulte difference of last two term being
        approx=sum+(4/i); %more than t,we must add one more loop to make it such that the difference becomes less tan t.         
    if i>=0                   
        i=(abs(i)+2)*-1; 
    else
        i=abs(i)+2; 
    end
    end
end
end
    
%This is a method to make the function run faster.

