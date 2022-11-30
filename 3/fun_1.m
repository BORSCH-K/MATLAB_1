function [A] = fun_1(A, k)
t = A (k);
A(k) = A(k+1);
A(k+1) = t;
end

