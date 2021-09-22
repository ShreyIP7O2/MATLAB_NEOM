clc;
clear;

f= @(x) x^3-2*x-5;
t= @(a,b) (a*f(b)-b*f(a))/(f(b)-f(a)) ;

a=2;
b=3;
c=0;
for n= 1:10
    c=t(a,b);
    val=f(c);
    if( f(a)*f(b) <0)
        b=c;
    else
        a=c;
    end
end

cc