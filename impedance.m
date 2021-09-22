function x= impedance(r,c,l,w)
if nargin<4
    error('not enough input arguments');
end
x(1)=1/(w*c);
x(2)=w*l;
Zt=r+(x(2)-x(1))*1i;
x(3)=abs(Zt);
x(4)=angle(Zt);
