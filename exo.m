function [g]=exo(x ,y, a)
  g=0;
  n=length(x);
  
  for j=1:n
    v=1;
    for i=1:n
      if i==j
        else
        v=v*((a-x(i))/(x(j)-x(i)))
      endif
    endfor
    g=g+v*y(j)
  endfor
endfunction
