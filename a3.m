function[]= a3(x,y,o)
  
  n=length(x)
  A=zeros(n,o)
  b=zeros(n,1)
  
  for i=1:n
    
    for j=1:o+1
      A(i,j)=x(i)^(j-1);
    endfor
    b(i)=y(i);
   endfor
  A
  b
  At=A'
  Q=At*A
  v=At*b
  
  S=Q\v
  
endfunction
