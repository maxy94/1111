%Assignment 1-Question 2 part 1
%By using a single function cylinder_weight to perform all necessary computations
%In this function: length=L , inner_radius=r1 , outer_radius=r2 , density=d

function weight= cylinder_weight(length,inner_radius,outer_radius,density) 
volume_outer=pi*length*(outer_radius^2);
volume_inner=pi*length*(inner_radius^2);
volume_tube=volume_outer-volume_inner;
weight=volume_tube*density;

end
