[theta,phi] = meshgrid(0:0.05:pi,0:0.05:2*pi);
%t=cos(phi).*sin(theta);
%rho=cosf3d(pi,t); 
%idio apotelesma okkk


%+I

figure;
rho=cos3d(pi/2,theta,phi);
x_P = (rho.*cos(phi)).*sin(theta);
y_P = (rho.*sin(phi)).*sin(theta);
z_P = rho.*cos(theta);
surf(x_P,y_P,z_P);
title("λ/4");

hold on;

figure;
rho=cos3d(pi,theta,phi);
x_P = (rho.*cos(phi)).*sin(theta);
y_P = (rho.*sin(phi)).*sin(theta);
z_P = rho.*cos(theta);
surf(x_P,y_P,z_P);
title("λ/2");

hold on;


figure;
rho=cos3d(3*pi/2,theta,phi);
x_P = (rho.*cos(phi)).*sin(theta);
y_P = (rho.*sin(phi)).*sin(theta);
z_P = rho.*cos(theta);
surf(x_P,y_P,z_P);
title("3λ/4");

hold on;


%+I -I

figure;
rho=sin3d(pi/2,theta,phi);
x_P = (rho.*cos(phi)).*sin(theta);
y_P = (rho.*sin(phi)).*sin(theta);
z_P = rho.*cos(theta);
surf(x_P,y_P,z_P);
title("λ/4");

hold on;

figure;
rho=sin3d(pi,theta,phi);
x_P = (rho.*cos(phi)).*sin(theta);
y_P = (rho.*sin(phi)).*sin(theta);
z_P = rho.*cos(theta);
surf(x_P,y_P,z_P);
title("λ/2");

hold on;


figure;
rho=sin3d(3*pi/2,theta,phi);
x_P = (rho.*cos(phi)).*sin(theta);
y_P = (rho.*sin(phi)).*sin(theta);
z_P = rho.*cos(theta);
surf(x_P,y_P,z_P);
title("3λ/4");

hold on;


