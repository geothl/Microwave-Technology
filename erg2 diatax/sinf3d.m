function [outputArg1] = sinf3d(x,t)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
x1=x/2;
outputArg1 = 0.25*abs(sin(x1*t)-sin(3*x1*t)+sin(5*x1*t)-sin(7*x1*t));
end