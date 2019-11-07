function[t,y]=algo18(h,a,b,y0)
y(1)=y0;
t=a:h:b;#vecteur temps
y(2)=y(1)+(t(2)-t(1))*y(1)+(((t(2)-t(1))^2)/2)*(cos(t(1))-6*cos(t(1))-3*y(1)); #developpement limité ordre 2 pour estimer y(2)

for i= 3:length(t)
  yp(i)=y(i-1)+h*((3/2)*fct(t(i-1),y(i-1))-(1/2)*fct(t(i-2),y(i-2)));#prédiction
  y(i)=y(i-1)+h*((1/2)*fct(t(i),yp(i))+(1/2)*fct(t(i-1),y(i-1))); #correction
  endfor

endfunction

function f=fct(t,y)
  f=sin(t)-sin(6*t)-3*y; #y'
  #y''=cos(t)-6cos(6t)-3y'
endfunction