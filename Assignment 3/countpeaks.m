function ret=countpeaks(v)
ret=0;
grad=v(2:end)-v(1:end-1); %Creates a vector of the gradient between each points
noZero=grad(grad~=0);     %removes all gradient=0,inclusive the gradients of plateaus 
for i=1:(numel(noZero)-1)
    if noZero(i)>0 & noZero(i+1)<0 %if the 1st grad is positive and immediate 2nd grad is negative then it is a peak
        ret=ret+1;                 %this accounts for pleateaus too, since we removed the pleateau grad,and
    end                            %only consider the gradients of the sides of the pleateau.
end
