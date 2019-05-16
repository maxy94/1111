%Question 1
%A function file ladderOpti.m is created that uses the optimizing equation.
x=45:135; %degrees
w1=2;
w2=2;
L=zeros(1,numel(x));
for i=1:numel(x)
    a=x(i);
    te=fminsearch(@(t) ladderOpti(a,t),30); %30 degree is a guess for all t
    L(i)=(w1/sind(te))+(w2/sind(180-a-te));
end
%plotting x and L
plot(x,L,'r')
grid on
xlabel('x, degrees')
ylabel('L')
set(gca, 'XTICK', 45:5:135)
title('Graph of L against x')

%Yes, it makes sense. The smaller the angle of alpha, the 'tighter' the
%walkway corridor will be. We can see from the graph that as alpha increases, the maximum ladder length increases.
%Therefore, as alpha increases, the walkway is able to accomodate a longer ladder. 