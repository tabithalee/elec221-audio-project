function f = MyConv(x,h)
%MYCONV Summary of this function goes here
%   Detailed explanation goes here

lx=length(x);
lh=length(h);
x2=[x',zeros(1,lh-1)];
h2=[h',zeros(1,lx-1)];
a=fft(x2);
b=fft(h2);
c=a.*b;
d=ifft(c);
f=abs(d)';



end

