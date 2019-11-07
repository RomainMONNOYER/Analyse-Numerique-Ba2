function [ x ] = a7( A, b )
 
n = max (size(A))
 
 for k = 1:n-1
     for i = k+1:n
    l(i,k) = A(i,k)/A(k,k)
        for j = 1:n
            A(i,j) = A(i,j) - l(i,k)*A(k,j)
           
        end
      b(i) = b(i) - l(i,k)*b(k)
     end
 end
 
 x(n) = b(n)/A(n,n)
 for i = n-1:-1:1 %on remonte la matrice diagonalisée avec un pas de -1
     d = 0;
    for j = i+1:n
    
        d= d + A(i,j)*x(j)
    end
     x(i) = (b(i)-d)/A(i,i)
 end
 
end
