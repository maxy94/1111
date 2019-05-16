function v=loop2b(P,T)
v=zeros(numel(T),numel(P));
for i=1:numel(T)
    for j=1:numel(P)
        v(i,j)=fsolve(@(v) RKEoS(P(j),v,T(i)), 0.01);
    end
end