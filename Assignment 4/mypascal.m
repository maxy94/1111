function ret = mypascal(n)
ret=ones(n);
for r=2:n                               %r=row index (ie. 2=2nd row...)
    for c=2:n                           %c=column index(ie. 2=2nd column...)
        ret(r,c)=ret(r,c-1)+ret(r-1,c);
    end
end