function [y] = polinom_val(a, x)
n = length(a);
m = length(x);
y = ones(1, n);
for i = 1:m
    H = 0;
    for j = 1:n
       H = H + x(i)^(j-1) * a(j);
    end
    y(i) = H;
end

