function [X] = Gauss(A0, b)
eps = 0.001;
A = [A0 b];
n = 3;
for k = 1:n
    if abs(A(k,k)) < eps 
        [A] = fun_1(A, k);
    end
    for j = (n+1):(-1):k
        A(k,j) = A(k,j)/A(k,k);
    end
    for i = (k+1):n
        for j = (n+1):-1:k
            A(i,j) = A(i,j) - A(i,k)*A(k,j); 
        end
    end
end

for i = (n):-1:1
    X(i) = A(i,n+1);
    for j = (i+1):n
        X(i) = X(i) - A(i,j)*X(j);            
    end
end
end