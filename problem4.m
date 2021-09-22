clc;
clear all;
close all;
f=100;
w= 2*pi*f;
t= (0:0.0001:0.04);
Vs= sin(w.*t);
for i= 1:length(t)
    if(Vs(i)>=0.6)
        Vo(i)=0.6;
    elseif(Vs(i)<0.6 && Vs(i)>-0.6)
        Vo(i)=Vs(i);
    elseif(Vs(i)<=-0.6)
        Vo(i)=-0.6;
    end
end
subplot(2,1,1)
plot(t, Vs)
xlabel('t');
ylabel('Vs')
subplot(2,1,2)
plot(t,Vo)
xlabel('t')
ylabel('Vo')
