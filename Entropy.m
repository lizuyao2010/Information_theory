% Zuyao Li , int14zl2, 920415P378
function H=Entropy(P)
s=size(P);
if s(1,1)==1
    p=[P;-P+1];
end
s=size(p);
H = ones(1,s(1,2))-1;
for j=1:s(1,2)
    for i=1:s(1,1)
        if p(i,j)==0
            t=0;
        else
            t=p(i,j)*log2(p(i,j));
        end
        H(j) = H(j)-t;
    end
end



