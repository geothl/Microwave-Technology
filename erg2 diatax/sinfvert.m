function [outputArg1] = sinfvert(x,theta)
x1=x/2;
outputArg1 = 0.25*abs(cos(pi*0.5*cos(theta))./sin(theta)).*abs(sin(x1*sin(theta))-sin(3*x1*sin(theta))+sin(5*x1*sin(theta))-sin(7*x1*sin(theta)));
end