%% Assignment 3
%This assignment focuses on the use of vectors and matrices
%There are 4 questions.

%% Question 1
%The function maxvector(x) takes in an argument vector x and returns the
%maximum of all elements of x

x=[1 0 2 3 -3 4 4 -2 4 4 -1 -1 -2] %vector x has a mix of negative and repeated elements
max(x)                             %outputs ans=4. This is correct

x=rand(1,20)         %Creates a vector of 20 random values between 1 and 20
max(x)==maxvector(x) %This will give the ans=1 (true). thus, maxvector will give the max value of a vector x

%% Question 2
%Part a) The function getdistance(m) gives the total distance travelled, given the
%argument containing the values of the coordiates of each of the 3 location

m = [1.5 2.0; 4.25 5.75; 7.0 10.2] %Values given in question
getdistance(m)                     %Outputs ans=19.7551 .This answer is the same as the one given in question.

%Part b) The function getdistance1(m) does the same thing, but uses
%vectorization techniques to solve.

m = [1.5 2.0; 4.25 5.75; 7.0 10.2] %Values given in question
getdistance1(m)                    %Should give 19.7551 also. Outputs ans=19.7551. thus it is correct

%% Question 3
%Part a) The function countpeaks(v) gives the number of peaks and pleateaus
%in vector v.

v=[-1 0 0 1 2 1 1 3 3 2 3 4] %given vector in question
countpeaks(v)                %outputs ans=2, which is correct
countpeaks(v(8:end))         %outputs ans=0, which is correct

x=rand(1,20)                 %creates a vector x with 20 values
countpeaks(x)                %we have the output for countpeaks(x), and
plot(x)                      %comparing it to graph (use plot(x)) we can count if number of peaks is correctly given.
                             %Test runs showed that countpeaks outputs the
                             %correct number of peaks.
                             
%Part b) The function minpeak(v) takes an argument vector v and outputs the
%smallest peak value.

v=[-1 0 0 1 2 1 1 3 3 2 3 4] %given vector in question
minpeak(v)                   %gives ans=2, this is the correct answer
minpeak(v(8:end))            %gives ans=[], this is the correct output

x=rand(1,20)                 %creates a vector x with 20 values
plot(x)                      %use plotted graph to determine lowest peak value
minpeak(x)                   %compare to graph value to determine if it's correct.
                             %test runs showed that it is correct.
                             
%% Question 4
%The function mymagic(n) creates a magic square of n order (ie. a nxn matrix)
%n must be a odd number.

mymagic(5)      %Comparing these two, we can see that it is equal in value and 
magic(5)        %thus, it is correct.

mymagic(17)==magic(17) %MATLAB will check if elements in mymagic(17) equals to magic(17)
                       %and output n x n matrix of element 1 (ie: true) if
                       %it's true. outputs a 17x17 matrix of 1.