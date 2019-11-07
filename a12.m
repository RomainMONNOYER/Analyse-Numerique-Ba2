function [Y]=a12(A,b,n)
x=rand(5,1)%iteration 0
deltaf=A*x-b;
d=-deltaf;
k=0
for ite=1:n
    a=((-d')*deltaf)/(d'*A*d); % atttention si erreur recompiler car d depend du x random donc denom nul
    x=x+a*d;
    deltaf1=A*x-b;
    beta=(norm(deltaf1))^2/(norm(deltaf))^2;
    d=-deltaf1+beta*d;
    deltaf=deltaf1;
    k=k+1;
   
end
k
Y=x;
end
