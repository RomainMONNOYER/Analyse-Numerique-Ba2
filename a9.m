function [L,D]= a9(A0)
   n=length(A0)
   A=A0;
   for k=1:n
     L(:,k)=A(:,k)/A(k,k);
     D(k,k)=A(k,k);
     A=A-D(k,k)*L(:,k)*L(:,k)';
   end

endfunction
