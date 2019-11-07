function [L,U]= a8(A)

 n=length(A)
  
  for k=1:n
      for j=k:n
        U(k,j)=A(k,j);
      end
      for i=k+1:n
        L(i,k)=A(i,k)/A(k,k);
      end
       L(k,k)=1;
      for i=k:n
        for j=k:n
        A(i,j)=A(i,j)-L(i,k)*U(k,j);
        end
      end
   end
  
endfunction
