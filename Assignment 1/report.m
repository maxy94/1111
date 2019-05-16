%% Lab 1 Assignment
%There are three questions for this assignment
%that focuses on functions and expressions.

%% Question 1 (compute_area.m)
%Creating a compute_area function that computes the area
%of a circle given only the side of a inscribed square

%comupute_area(a)
compute_area (0)       %Testing for smallest argument. outputs ans=0 , while it may be correct for the written function,it should be noted 
                       %that it is mathematically untrue,since length cannot be 0.
compute_area (sqrt(2)) %Testing for output of pi. Outputs ans=3.1416 , which is the pi value in 5 significant figures.
compute_area (pi)      %using pi as argument. outputs ans=15.5031 ,which is correct.
compute_area (-3)      %Testing by using an impossible length(negative number). Outputs ans=14.1372 , while it may be correct for the written function,
                       %it should be noted that it is untrue mathematically, since an impossible length was used. This is due to ^2 being used.
				  				 

                       
%% Question 2 
%Part1(cylinder_weight.m)
%Creating a function cylinder_weight that computes the volume of
%a cylinder given the outer radius,inner radius,length of cylinder and density of cylinder

%cylinder_weight(length,inner_radius,outer_radius,density)
cylinder_weight (300,3,5,7.87) %Testing the values L = 300 cm, r1 = 3 cm, r2 = 5 cm, d = 7.87 g/cm3 , outputs ans=1.1868e+05. 
                               %This is the correct answer. This tests the basic/typical cylinder dimensions.
cylinder_weight (0.1,0.6,1.2,7.87) %Testing the values L = 0.1 cm, r1 = 0.6 cm, r2 = 1.2 cm, d = 7.87 g/cm3, outputs ans=2.6702 			   							   
                                   %This is the correct answer.This tests for a very small,narrow and thin cylinder/ring(since the length is smaller than the radius)
cylinder_weight (300,3,5,0.1) %Testing the values L = 300 cm, r1 = 3 cm, r2 = 5 cm, d = 0.1 g/cm3 , outputs ans=1.5080e+03
                              %This is correct answer.This tests for a small density.
cylinder_weight (300,0,5,7.87)  %Testing for a cylinder without a hole (inner radius r1=0cm). outputs ans=1.8543e+05.
                                %This is the correct answer (function works for a cylinder without hole).


%Part2(volume_outer.m,volume_inner.m,volume_tube.m,tube_weight.m)
%A set of functions is written to implement separate tasks in the calculation of the weight of tube

%To compute use function volume_outer and volume_inner to calculate the
%volumes of outer and inner tube. then input the values from volume_outer
%and volume_inner to function volume_tube. Then input value from
%volume_inner to tube_weight together with density d.

%To test for values	L = 300 cm, r1 = 3 cm, r2 = 5 cm, d = 7.87 g/cm3,
volume_outer (5,300) %Calculate outer volume.output ans=2.3562e+04.
volume_inner (3,500) %Calculate inner volume.output ans=8.4823e+03
volume_tube (2.3562e+004,8482.3) %Calculate volume of cylinder. output ans=1.5080e+04
tube_weight (1.5080e+004,7.87) %Calculate weight of cylinder.output ans = 1.1868e+05	
%Thus this is similar to answer gotten with Part 1 cylinder_weight function, using the same variables.
%Thus Part 2 function is working the same as Part 1.



%% Question 3(pole_height.m)
%Creating a function pole_height to compute the height of the pole
%using the formula given and given the angles alpha and beta (in degrees) and length d
%Conversion to radians from degrees is needed as MATLAB uses radians in trigonometry function.

%pole_height(length_d,alpha,beta)
pole_height(80,32,24)  %Calculate pole height using values given in question (d = 80 m, alpha= 32 degree and beta = 24 degree)
                       %Outputs ans=50.7631 . This answer is correct.
pole_height(80,24,32)  %Using instance where beta argument is larger than alpha argument. The output is an invalid number (0.0000-50.7631i)
                       %From the formula, beta cannot be larger than alpha when this function is used.
pole_height(0.01,2,1)  %Using very small values of length d, alpha and beta. Outputs ans=2.0153e-04 . This answer is correct.

%Testing for various combined angles around 180 degrees.
pole_height(80,79,100) %Using angles of alpha and beta more than 180 degrees combined. Outputs an invalid number. 
pole_height(80,100,80) %Using angles of alpha and beta equal to 180 degrees combined. Outputs 1.1989e+010. This is a very large number
pole_height(80,100,79) %Using angles of alpha and beta less than 180 degrees combined.Outputs ans=977.9030 , which is correct using the formula.
pole_height(80,90,90)  %Using alpha and beta both 90 degrees, outputs ans=inf(division by zero).
pole_height(80,79,79)  %Using alpha and beta both 79 degrees, outputs ans=inf
                       %Therefore, alpha and beta combined must be less
                       %than or equal to 180 degrees.
                       %Beta must also be less than alpha. 
                       %ie:beta less than 90 degrees