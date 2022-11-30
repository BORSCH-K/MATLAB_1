function [x1] = fun2(x)
M = -20;
F = exp(x)-sin(x)-3;
x1 = x+(F/M);
end