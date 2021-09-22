clc;
close all;
clear all;
[x,y]=meshgrid(-5:0.5:5);
z= sin(x)+sin(y);


subplot(2,3,1);
s2=meshz(x,y,z)

subplot(2,3,2);
s1=contour3(x,y,z,50)

subplot(2,3,3);
s3=meshc(x,y,z)

subplot(2,3,4)
s4=surf(x,y,z,50)

subplot(2,3,5)
s5=bar3(z)

ylabel('y')
xlabel('x')