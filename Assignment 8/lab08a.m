function F=lab08a(k) %k is a vector in the form [k1 k2 k3]
load lab08data.mat
F=0;
for i=1:numel(y)
    mod_y=(k(1)*(exp(k(2)*x(i))))+k(3); %model y value based on eqn and x(i)
    SD=(y(i)-mod_y)^2;
    F=F+SD;
end