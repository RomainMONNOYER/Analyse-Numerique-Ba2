function [x]=a6(x,e)
  k=0
  tol=inf;
  while (tol>e)
    f=[(x(1)^3)-3*(x(1)*x(2)^(2))-1; (x(2)^(3))-3*(x(1)^(2))*x(2)]
    J=[3*(x(1)^(2))-3*(x(2)^(2)) -6*x(1)*x(2); -6*x(1)*x(2) 3*x(2)^(2)-3*x(1)^(2)]
    z=J\-f;
    x(1)=x(1)+z(1)
    x(2)=x(2)+z(2)
    tol=norm(z)
    k=k+1;
  endwhile
  k
endfunction
