function [xf] = a11(A,b,x)
 

xf=x;
d=-(A*xf-b);
n=500;
k=0
for i= 1:n
    %Ca sert a rien de mettre des indices ici le programme le comprend tout
    %seul
    h = -((d')*(A*xf-b)) / (d'*A*d);
    xf = xf+h*d;
    d = -(A*xf-b);
    k=k+1;
    
end
k
end
