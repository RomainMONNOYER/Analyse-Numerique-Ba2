function[x]=a4(a,b,e)

k=0
while (abs(b-a)>e)
  x=(a+b)/2;
  if (fct(a)*fct(x)<0)
    b=x;
  else 
    a=x;
  endif
endwhile
endfunction

function [f]=fct(x)
  f=sin(2*x);
endfunction
