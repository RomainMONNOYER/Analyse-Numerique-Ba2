function [S, L]= a14(A, maxiter)
 
[n,n]= size(A);
S = eye(n);
 
for k=1 : maxiter
    [Q,R]= qr(A);
    A=R*Q;
    S=S*Q;
end
 
V = diag(A)  %sortir la matrice A(k) pour voir les valeurs propres sur la diagonale
 
 for i=1:n
   L(i,i)=A(i,i);
 endfor
end
