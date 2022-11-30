function [y] = EL (t)
n = length(t);
y = zeros(1,n);
y(1) = 2.334;
for i = 1:n-1
   y(i+1) = y(i) + 0.2*3*(1/(2*sqrt(t(i)-1)) - sqrt(t(i)-1) - cos(t(i)) - sin(t(i))); 
end
end