[theta,phi] = meshgrid(0:0.05:pi,0:0.1:2*pi);
%t=cos(phi).*sin(theta);
%rho=cosf3d(pi,t); idio apotelesma okkk

x1=pi/2;
rho=abs(cos(pi*0.5*cos(theta))./sin(theta)).*abs(cos(x1*cos(phi).*sin(theta))+cos(3*x1*cos(phi).*sin(theta))+cos(5*x1*cos(phi).*sin(theta))+cos(7*x1*cos(phi).*sin(theta)));



x_P = rho.*cos(phi).*sin(theta);
y_P = rho.*sin(phi).*sin(theta);
z_P = rho.*cos(theta);

surf(x_P,y_P,z_P);