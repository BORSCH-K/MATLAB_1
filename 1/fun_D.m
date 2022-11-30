function [D] = fun_D(x)
M = -20;
F = exp(x)-sin(x)-3;
D = F/M;
end