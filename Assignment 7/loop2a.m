function v=loop2a(P,T)
v=zeros(size(P));
for i=1:numel(P)                               %Loop is created so that v is calculated for every P interval values
    v(i)=fsolve(@(v) RKEoS(P(i),v,T), 0.01);
end