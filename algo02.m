function [a b c d]=algo02(x,y)
  n=length(x)
  hi=[0];
  
  for i=2:n
    hi(i)=[x(i)-x(i-1)];
   endfor
   hi
  for i=1:n-2
    A(i,i)=hi(i+1);
    A(i,i+1)=2*(hi(i+2)+hi(i+1));
    A(i,i+2)=hi(i+2);
   endfor
    A(n,n)=1;
    A(n-1,1)=1;
 
    for i=2:n-1
      B(i-1)=6*((y(i+1)-y(i))/(hi(i+1))-(y(i)-y(i-1))/hi(i));
      endfor
    B(n-1)=0;
    B(n)=0;
    Bt=B';
    
    
     %affichage A b M
     A
     B
     Bt
     M=A\Bt
     
     for i=2:n-1
       a(i-1)=(M(i)-M(i-1))/6*hi(i);
       b(i-1)=M(i-1)/2;
       c(i-1)=((y(i)-y(i-1))/hi(i))-(((M(i)+2*M(i-1))*hi(i))/6);
       d(i-1)=y(i-1);
     endfor
    
endfunction
