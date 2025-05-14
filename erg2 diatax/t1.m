theta = 0:0.01:2*pi;
phi=0:0.01:2*pi;
t=cos(phi).*sin(theta);
rho=cosf3d(pi/2,t);
x_P = (rho.*sin(theta)).*cos(phi);
y_P = (rho.*sin(theta)).*sin(phi);
z_P = rho.*cos(theta);
%surf(x_P,y_P,z_P)











open 'plot.fig' 


ax=gca;
h = findobj(ax,'Type','Line');
%get the data (dot notation instead of get() for readability)
r=h.RData;
theta=h.ThetaData;
hold on