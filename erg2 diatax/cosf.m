function [outputArg1] = cosf(x,phi)
x1=x/2;
outputArg1 = 0.25*abs(cos(x1*cos(phi))+cos(3*x1*cos(phi))+cos(5*x1*cos(phi))+cos(7*x1*cos(phi)));
end