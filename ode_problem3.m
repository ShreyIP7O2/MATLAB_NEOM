clc;
close all;
clear all;
f=@(t,y) ((y.^3).*(2.*y+4).^(1/2))./((y.^3+1).^2);
y0=2:2:10;
[t,y]= ode45(f,[0,1], y0);
plot(t,y,'-o')  
xlabel('x')
ylabel('y')
title('ode45 to solve the problem')