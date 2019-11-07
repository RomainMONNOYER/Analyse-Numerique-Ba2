function[t,y]=algo17(h,a,b,y0)
y=y0;
t=a:h:b;
for i=2:length(t)
  #y(i)=y(i-1)+h*fct(t(i-1),y(i-1)); Méthode d'Euler (généralisation)
  k1=fct(t(i-1),y(i-1));
  k2=fct((t(i-1)+(2/3)*h),(y(i-1)+h*(2/3)*k1));
  k3=fct((t(i-1)+(2/3)*h),y(i-1)+h*((1/3)*k1+(1/3)*k2));
  y(i)=(y(i-1)+h*((1/4)*k1+(3/4)*k3));
  endfor


endfunction

function f=fct(t,y)
  f=sin(t)-sin(6*t)-3*y;
endfunction
