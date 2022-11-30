function [a] = kf(x,y)
n = length(x); 
X = ones(n,n); 
for i = 1:n
    for j = 2:n
        X(i,j) = X(i,j-1) * x(i);
    end
end
Y = y';
a = Gauss(X, Y);
end

