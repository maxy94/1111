%% Assignment 2
% This assignment focuses on control structures
%There are 4 questions in total

%% Question 1
%Part a) Function sum_series computes the sum of series
%1,2,3,4,5... to nth term,where n is an argument of sum_series.
%n must be greater than or equal to 0.
sum_series(6) %Tests for sum of series 1,2,3,4,5,6. Returns ans=21. This is the correct answer
sum_series(60)%Test for sum of series till 60th term. Returns ans=1830. Checking with formula for sum of series 1,2,3,4,5...n,
              %which is(n(n-1))/2 , the answer from the function(1830) is correct.
              
%Part b)Function sum_series_odd computes the sum of the series
%1,3,5,7,9.... to the nth term, where n is the argument.
%n must be greater or equal to 0.
%for any term i,i=2n-1 (ie 5th term is 9)
sum_odd_series(10) %Test for sum of series 1,3,5,7,9...19. Returns ans=100. This answer is correct.

%Part c)Function sum_alt_sign_series computes the sum of the series
%1,-3,5,-7,9...to the nth term, where n is the argument
%n must be greater or equal to 0.
%Note that while the signs alternate, the MAGNITUDE follows the sequence
%1,3,5,7,9.
sum_alt_sign_series(7) %Test for sum of series 1,-3,5,-7,9,-11,13. Gives ans=7. This answer is correct.

%Part d)Function pi_approx1 computes the sum of the series
%4/1-4/3+4/5-4/7+4/9....to the nth term. n is the arugment where n>0(n
%cannot be 0 when using this as we would divide by 0 in the function)
pi_approx1(7) %Test for the sum of series 4/1-4/3+4/5-4/7...+4/13. Returns ans =3.2837. This answer is correct.
pi_approx1(100000) %Test for sum of series to 100000th term. sum should converge to pi value.
                   %Outputs ans=3.1416 . Which is close to value of pi in 5
                   %signigicant figures.
                   
%Part e)Function pi_approx2 takes into an argument t which is a tolerance
%value and returns the largest pi approximate such that the absolute difference in
%the pi approximate and pi is less than t.
pi_approx2(0.001) %Test for a tolerance value of 0.001. Returns ans=3.142092403683526.Inserting disp(sum); line into the function after sum=sum+(4/i); line,
                  %we can check for sum.The absolute difference of |pi(i)-pi(i-1)| is 0.00099975(which is less than t=0.001)
                  %Upon further testing of |pi(i-1)-pi(i-2)|, the absolute difference is 0.00100025(which is more than t=0.001)
                  %Therefore, this function works.
     
pi_approx2(0.0001)%Test for a tolerance value of 0.0001.Returns ans=3.141642651089887
pi_approx2(0.00001)%Test for a tolerance value of 0.00001.Returns ans=3.141597653564762

%% Question 2
%Part a) Function my_gcd1 takes two arguments a,b and returns the highest common
%divisor of the two numbers.
my_gcd1(539,84) %Test for the greatest common divisor of 539 and 84. Returns ans = 7. This is correct
my_gcd1(13,19) %Test for the greatest common divisor of two primes which should be 1. Returns ans=1.

%Part b) Function my_gcd2 takes two arguments a,b and using the Euclidean
%algorithm, returns the greatest common divisor a when a divided by b has
%no remainder.
my_gcd2(539,84) %Test for the greatest common divisor of 539 and 84. Returns ans = 7. This is correct
my_gcd2(13,19) %Test for the greatest common divisor of two primes which should be 1. Returns ans=1.


%% Question 3
%Function myprime takes one argument n (in which n>0) and checks if n is a
%prime number or not. outputs 1(true) if n is prime and 0(false) if n is
%not a prime number.
myprime(5) %Tests if the number 5 is a prime. Outputs ans=1. Since 5 is a prime number and the function outputs true(1), the function works correctly.
myprime(9) %Tests if the number 9 is a prime. Outputs ans=0. Since 9 is not a prime number and function outputs false(0),the function works correctly.

%% Question 4
%Function sumprimes takes an argument n (n>1) and sums up the prime
%factors.
sumprimes(2) %Ans=2. Correct.
sumprimes(10) %ans=7. Correct.
sumprimes(20) %ans=9.Correct.
sumprimes(1006) %ans=505.Correct.