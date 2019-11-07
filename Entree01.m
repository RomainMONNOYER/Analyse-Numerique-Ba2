x=[0 1 2 4 5 6 7 9 10 11]
y=[0 0 1 1 0 0 1 1 0 0]
a=3;

Y = algo01(x,y,a);

dx=0:0.1:11;
n=length(dx);


for i=1:n
dy(i)=exo(x, y, dx(i));
endfor

figure;
plot (dx,dy);
hold on;
plot (x,y,'ro');