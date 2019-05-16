function ret = getdistance(m)
k=m([1:end 1],:)';  %adds coordinate of 1st value to the end and transposes the vector.
k=k(:);             %converts k into column vector.
ret=0;
for i=1:2:(numel(m)-1)
    s=sqrt((k(i)-k(i+2))^2+(k(i+1)-k(i+3))^2);
    ret=ret+s;
end