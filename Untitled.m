f=@(x)10-x^2;
a=4;
b=3;
for i=1:100
    c=(a+b)/2;
    if f(c)>0
        b=c;
    else a=c;
    end
end
a=4; b=3; p=c;
for i=1:100
    c=(a+b)/2;
   er(i)=f(c)-f(p)
   if f(c)>0
       b=c;
   else a=c;
   end
end

fprintf('Root of given equation is %f',c)
plot(er);
title('Plot of Error')
xlabel('No. of iterations')
ylabel('Error')
grid on;