c=3*10^8;
a=22.86*10^(-3);
fc=c/(2*a);
f=9*10^(9);
heta=120*pi;
lg=mean([49.2e-3,49e-3,49.4e-3]) ;%49.2*10^(-3)
dA1arr=[23.1e-3,23e-3,23.2e-3]; %estimated dA1 for 1st material
dB1arr=[7.2e-3,7.2e-3,7.2e-3,7.2e-3];  %estimated dB1 for 1st material
dA2arr=[22.9e-3,22.8e-3,23e-3];  %estimated dA2 for 2nd material
dB2arr=[4.2e-3,4e-3,4.2e-3,4.1e-3];  %estimated dB2 for 2nd material
dA1=mean(dA1arr);    %-0.07e-3; %23.1-0.07=23.03
dB1=mean(dB1arr); %7.2*10^(-3);
dA2=mean(dA2arr);  %22.913
dB2=mean(dB2arr); %4*10^(-3);



%Dielectric constant of 1st material
er1=(fc/f)^2-(1-(fc/f)^2)/(tan(2*pi*dA1/lg)*tan(2*pi*dB1/lg));

%Dielectric constant of 2nd material
er2=(fc/f)^2-(1-(fc/f)^2)/(tan(2*pi*dA2/lg)*tan(2*pi*dB2/lg));





