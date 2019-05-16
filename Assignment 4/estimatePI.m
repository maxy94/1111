function PI=estimatePI(r,n)
m=0;
x=(rand(n,1).*(2*r))-r;         %r-(-r)=2*r
y=(rand(n,1).*(2*r))-r;         %vector x and y contains uniformly distributed random coordinate points for each axis (x or y).
for i=1:numel(x)
    h=sqrt((x(i)^2)+(y(i)^2));  %calcuates the hypotenuse from the triangle formed by the coordinates with respect to origin(0,0)
    if h<=r                     %if its lesser or equal than r(radius), the the point is within circle.
        m=m+1;
    end
end
PI=(m/n)*4;
end


%Part a) C=pi * r^2
%        S=2r*2r=4*(r^2)
%        R=C/S
%         =(pi*r^2)/(4*(r^2))
%         =pi/4
%Therefore, pi=4R