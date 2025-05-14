clear;
Zl=10-1i*70;
Yl=1/Zl;
Z0=50;
Y0=1/Z0;
re=real(Yl);
im=imag(Yl);
d=1/8;
b0=2*pi;
t=tan(b0*d);


A=tan(b0*d);
B=-real(Yl)*Z0*tan(b0*d);
C1=Y0-real(Yl)-imag(Yl)*tan(b0*d);
D=1;
E=(Y0-imag(Yl)*tan(b0*d))/Y0;
C2=real(Yl)*tan(b0*d)-imag(Yl)-Y0;


Delta=(D-A*E/B-C1*tan(b0*d)/(B*Y0))^2-4*A*(tan(b0*d)/(B*Y0))*(E*C1/B-C2);
r1s=((-D+A*E/B+C1*tan(b0*d)/(B*Y0))+sqrt(Delta))/(2*A*tan(b0*d)/(Y0*B));
r1o=((-D+A*E/B+C1*tan(b0*d)/(B*Y0))-sqrt(Delta))/(2*A*tan(b0*d)/(Y0*B));
t1s=-1/(Z0*r1s);
t1o=r1o*Z0;
l1s=atan(t1s)/(2*pi);
l1o=atan(t1o)/(2*pi);
r2s=(C1-A*r1s)/B;
r2o=(C1-A*r1o)/B;
t2s=-1/(Z0*r2s);
t2o=(Z0*r2o);
l2s=atan(t2s)/(2*pi);
l2o=atan(t2o)/(2*pi);


% 
% r1s=(re*(tan(b0*d))^2+2*Y0-re-2*im*tan(b0*d)-sqrt( (re*(tan(b0*d))^2+2*Y0-re-2*im*tan(b0*d))^2+4*(re*tan(b0*d))*((im*tan(b0*d)-Y0)*(Y0-re-im*tan(b0*d))/(re*tan(b0*d))+im+Y0*tan(b0*d)-re*(tan(b0*d)))))/2;
% r1o=(re*(tan(b0*d))^2+2*Y0-re-2*im*tan(b0*d)+sqrt( (re*(tan(b0*d))^2+2*Y0-re-2*im*tan(b0*d))^2+4*(re*tan(b0*d))*((im*tan(b0*d)-Y0)*(Y0-re-im*tan(b0*d))/(re*tan(b0*d))+im+Y0*tan(b0*d)-re*(tan(b0*d)))))/2;
% t1s=-1/(Z0*r1s);
% t1o=r1o*Z0;
% l1s=atan(t1s)/(2*pi);
% l1o=atan(t1o)/(2*pi);
% r2s=(C1-A*r1s)/B;
% r2o=(C1-A*r1o)/B;
% t2s=-1/(Z0*r2s);
% t2o=(Z0*r2o);
% l2s=atan(t2s)/(2*pi);
% l2o=atan(t2o)/(2*pi);
