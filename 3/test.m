clc;
A = [3 -8 7; 3.5 1400 2; -3 3333 2100];
b = [-560;9824;16850];
n = 3;

k = 1;
[m, t] = max(abs(A(k:n,k)));
disp(k); 
disp(m); 
disp(t);
i = k + t-1;
disp('i = ');
disp(i);

k = 2;
[m, t] = max(abs(A(k:n,k)));
disp(k); 
disp(m); 
disp(t);
i = k + t-1;
disp('i = ');
disp(i);


k = 3;
[m, t] = max(abs(A(k:n,k)));
disp(k); 
disp(m); 
disp(t);
i = k + t-1;
disp('i = ');
disp(i);


