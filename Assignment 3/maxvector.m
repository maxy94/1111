function ret = maxvector(x)
ret=x(1,1);
for i=x(1:end)
    if any(i>ret)
        ret=i;
    end
end  