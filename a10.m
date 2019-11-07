function X=a10(A,b,n)
%Jacobi
%B=diag(A);
%B=diag(B);
%C=A-B;
 
%Gauss-seidel ( relaxe et normal pareil, en relaxe omega vaut 1)
B=tril(A);
C=A-B;

X=rand(5,1)
B=inv(B);
for ite=2:n
   X=X+B*(b-A*X);
  
end
end
