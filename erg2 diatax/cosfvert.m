function [outputArg1] = cosfvert(x,theta)
x1=x/2;
outputArg1 = 0.25*abs(cos(pi*0.5*cos(theta))./sin(theta)).*abs(cos(x1*sin(theta))+cos(3*x1*sin(theta))+cos(5*x1*sin(theta))+cos(7*x1*sin(theta)));
end