function minP=minpeak(v)
a=v(1:(end-1));
b=v(2:end);
noPt=v((b-a)~=0);
noPt(end+1)=v(end);
p=[];
k=1;
for i=2:numel(noPt)-1
    if noPt(i)>noPt(i-1) & noPt(i+1)<noPt(i)
        p(k)=noPt(i);
        k=k+1;
    end
    minP=min(p);
end

