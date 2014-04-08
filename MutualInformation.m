% Zuyao Li , int14zl2, 920415P378
function I = MutualInformation(P)
Px=sum(P);
Py=sum(P');
s=size(P);
I=0;
for i=1:s(1,1)
    for j=1:s(1,2)
        if P(i,j)==0
            t=0;
        else
            t=P(i,j)*log2(P(i,j)/(Px(j)*Py(i)));
        end
        I=I+t;
    end
end