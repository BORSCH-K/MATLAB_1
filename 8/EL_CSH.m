function [y] = EL_CSH (x)
n = length(x);
y = zeros(1,n);
y(1) = 3.045;
for i = 1:n-1
    y1 = 0.2*(9*x(i)^2-1)*exp(-x(i));
    y(i+1) = y(i) + 0.1*((9*x(i)^2-1)*exp(-x(i)) - y(i) + (9*x(i+1)^2-1)*exp(-x(i+1)) - y1);
end
end