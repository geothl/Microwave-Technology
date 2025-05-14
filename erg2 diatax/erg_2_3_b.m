clear;
c=3e8;
f0=5e9;
f=0:10^6:10^10;
omega=2*pi*f;
b=omega/c;
lamda0=c/f0; %60mm
l1s=0.2285*lamda0;
l1o=0.1010*lamda0;
l2o=0.2206*lamda0;
l2s=0.0461*lamda0;
d=lamda0/8;
Z0=50;
Y0=1/Z0;
ZL=10-1j*70;
YL=1/ZL;

%short circuit
Yks1=-1j./(Z0*tan(b*l1s));
Yks2=-1j./(Z0*tan(b*l2s));
YAs=Yks1+YL;
YBs=Y0*(YAs+1j*Y0*tan(b*d))./(Y0+1j*YAs.*tan(b*d));
Yins=YBs+Yks2;
Zins=1./Yins;
Gin_s=abs((Zins-Z0)./(Zins+Z0));

figure;
plot(f,Gin_s);
title('Stubs ending in Short Circuit ')
xlabel('f'); 
ylabel('|Γin|');
hold on;


%open circuit
Yko1=1j*tan(b*l1o)/(Z0);
Yko2=1j*tan(b*l2o)/(Z0);
YAo=Yko1+YL;
YBo=Y0*(YAo+1j*Y0*tan(b*d))./(Y0+1j*YAo.*tan(b*d));
Yino=YBo+Yko2;
Zino=1./Yino;
Gin_o=abs((Zino-Z0)./(Zino+Z0));

figure;
plot(f,Gin_o);
title('Stubs ending in Open Circuit ')
xlabel('f'); 
ylabel('|Γin|');

hold on;
figure;
plot(f,Gin_s,f,Gin_o);
xlabel('f'); 
ylabel('|Γin|');
legend('short circuit stub','open circuit stub')
