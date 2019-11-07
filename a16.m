function q = a16(a,b,h)

f = @(x) (cos(log(x)));
I=0;   
 for i=a:h:b
   
     I = I + h/2*((1/3)*f(i)+(4/3)*f(i+(h/2))+(1/3)*f(i+h));    
 end
 q = I;
 end
