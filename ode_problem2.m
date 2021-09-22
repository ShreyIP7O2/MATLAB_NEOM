clc;
close all;
clear all;
f=@(t,y) (t.^2 -2.*y)./(t);
y0=2:3;
[t,y]= ode23(f,[1,2], y0);
plot(t,y,'-o')
xlabel('x')
ylabel('y')
title('ode45 to solve the problem')