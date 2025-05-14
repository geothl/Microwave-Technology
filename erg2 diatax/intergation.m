sy=0;
sx=0;
for phi=0:0.01:2*pi
    for theta=0.001:0.01:pi
        t=cos(phi)*sin(theta);
        sy=sy+(4*cos3d(3*pi/2,theta,phi))^2*sin(theta)*0.01^2;
        sx=sx+(4*sin3d(pi,theta,phi))^2*sin(theta)*0.01^2;


    end 
end   

Dy=64*pi/sy;
Dx=64*pi/sx;