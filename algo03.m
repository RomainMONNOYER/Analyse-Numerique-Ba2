function [a]=algo03(x,y,d)
  
  
  for i=1:m+1
    for j=1:m+1
      tmp=0;
      for k=1:n
        tmp=tmp+((x(k))^(i-1))*((x(k)^(j-1));
      endfor
      Q(i,j)=tmp;
    endfor
  endfor

  for i=1:m+1
    tmp=0
    for k=1:n
      tmp=tmp+((x(k)^(i-1))*y(k))
    endfor
    v(i)=tmp;
  endfor
  vt=v';
  a=vt/Q;
endfunction
