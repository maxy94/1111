function ret=matrixmulti(a,b)                       %a and b are matrices
x=size(a);
y=size(b);
if x(2)~=y(1)                        
    error('Invalid Dimensions of Matrix')          
else
    ret=zeros(x(1),y(2));                               
    for i=1:x(1)                                    
        for j=1:y(2)
            t=0;
            for k=1:x(2)
                t=t+(a(i,k)*b(k,j));
            end
            ret(i,j)=t;
        end
    end
end
            
            