function [x]= a5(a,b,e)
  k=0
  while (min(abs(fct(a)),abs(fct(b)))>e)
    x=a-((b-a)/(fct(b)-fct(a)))*fct(a);
    if (fct(a)*fct(x)<0)
      b=x;
    else 
      a=x;
    endif
    k=k+1;
  endwhile
  k
endfunction

function f=fct(x)
  f=sin(2*x);
endfunction
