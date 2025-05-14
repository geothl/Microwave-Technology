c=3*10^8;
a=22.86*10^(-3);
fc=c/(2*a);
f=9*10^(9);
heta=120*pi;
lg=49.2*10^(-3);
dA1=23.03e-3;    %-0.07e-3; %23.1-0.07=23.03
dB1=7.2e-3; %7.2*10^(-3);
dA2=22.913e-3;  %22.913
dB2=4.1e-3; %4*10^(-3);
d1=1.5*10^(-3);
d2=1.517*10^(-3);
omega=2*pi*f;
factor0=sqrt(1-(fc/f)^2);
Z0=heta/factor0;
b0=2*pi/lg;
%b0=omega*factor0/c;
gonia1=2*b0*dA1-pi;
gonia2=2*b0*dA2-pi;
tangonia1=tan(pi-gonia1);
arr1=[1 2*Z0/tangonia1 -Z0^2];
ra1=roots(arr1);
r1=ra1(2);
constant1=r1*c/(omega*d1*heta);
x1 = fzero(@(x) (tan(x)/x-constant1) , 0.3);

x11=x1*c/(omega*d1);

tangonia2=tan(pi-gonia2);
arr2=[1 2*Z0/tangonia2 -Z0^2];
ra2=roots(arr2);
r2=ra2(2);
constant2=r2*c/(omega*d2*heta);
x2 = fzero(@(x) (tan(x)/x-constant2) , 0.5);
x22=x2*c/(omega*d2);

%Dielectric constant of 1st material
er11=x11^2+(fc/f)^2;

%Dielectric constant of 2nd material
er22=x22^2+(fc/f)^2;

%Dielectric constant of 1st material with the method used in 2.1.a. for
%the fixed dmin
erf1=(fc/f)^2-(1-(fc/f)^2)/(tan(2*pi*dA1/lg)*tan(2*pi*dB1/lg));

%Dielectric constant of 2nd material with the method used in 2.1.a. for
%the fixed dmin
erf2=(fc/f)^2-(1-(fc/f)^2)/(tan(2*pi*dA2/lg)*tan(2*pi*dB2/lg));


