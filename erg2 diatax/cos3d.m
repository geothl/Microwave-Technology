function [outputArg1] = cos3d(x,theta,phi)
x1=x/2;
outputArg1 = 0.25*abs(cos(x1*cos(phi).*sin(theta))+cos(3*x1*cos(phi).*sin(theta))+cos(5*x1*cos(phi).*sin(theta))+cos(7*x1*cos(phi).*sin(theta))).*abs(cos(pi*0.5*cos(theta))./sin(theta));
end