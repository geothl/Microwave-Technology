function [outputArg1] = sinf(x,phi)
x1=x/2;
outputArg1 = 0.25*abs(sin(x1*cos(phi))-sin(3*x1*cos(phi))+sin(5*x1*cos(phi))-sin(7*x1*cos(phi)));
end