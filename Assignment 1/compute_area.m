%Assignment 1 -Question 1
%The Diameter of circle(circleDiameter)= The length from one corner of square to the opposite corner(Hypotenuse)
%Making a triangle with Hypotenuse and two sides of the square(length a)
%we have Hypotenuse=sqrt(a^2+a^2) (using Pythagoras' theorem)
%we can shorten it to Hypotenuse=(sqrt2)*a
%circleRadius=circleDiameter/2=((sqrt2)*a)/2
%Therefore, area of circle = pi*(circleRadius)^2
%area of circle = pi*((sqrt2/2)*a)^2
%area of circle = pi*0.5*a^2
%No sqrt functions necessary for compute_area

function area = compute_area(a) %a is the length of side of inscribed square
area=pi*0.5*(a^2);

end
