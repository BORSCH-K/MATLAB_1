A = [700 -8 7; 3.5 1400 6.5; -3 3 2100];
b = [-560; 9824; 16850];
x = A\b;
disp("Корни:");
disp(x);
eps = max(abs(b - A*x));
disp("Погрешность:");
disp(eps);