function [outputArg1] = sin3d(x,theta,phi)
x1=x/2;
outputArg1 = 0.25*abs(sin(x1*cos(phi).*sin(theta))-sin(3*x1*cos(phi).*sin(theta))+sin(5*x1*cos(phi).*sin(theta))-sin(7*x1*cos(phi).*sin(theta))).*abs(cos(pi*0.5*cos(theta))./sin(theta));
end