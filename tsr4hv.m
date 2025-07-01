function y=tsr4hv(x1,x2)
% 用于验证sr4hv的正确性
A=deg2rad(x1);
B=deg2rad(x2);
a=2*10*tan(A/2);
b=2*10*tan(B/2);
d=10;
y=sr4abd(a,b,d);
end