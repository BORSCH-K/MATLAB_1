A0 = [700 -8 7; 3.5 1400 6.5; -3 3 2100];
b0 = [-560;9824;16850];
A = [A0 b0]; % расширенная матрица

a = A0;
b = [0 0 0];
n = 3;
for i = 1:n % причесываем
   for j = 1:n
       if i == j
           a(i,j) = 0;
       else
           a(i,j) = -A0(i,j)/A0(i,i);
       end
   end
   b(i) = b0(i)/A0(i,i);
end

disp(a);
disp(b);
 
% точность численного решения
eps = 0.001;
k=1;
kmax=100;
% Задание начального приближения
x0 = b; 
disp(x0);
x1 = a*x0'+b';
disp(x1);
D = max(abs(x1'-x0));
while (D>eps) && (k<kmax)
    x0 = x1;
    x1 = a*x0+b';
    k=k+1;
    D = max(abs(x1-x0));
end
x = x1;
disp('�����:');
disp(x);
disp('���������� ��������:');
disp(k);
disp('�����������:');
disp(D);
