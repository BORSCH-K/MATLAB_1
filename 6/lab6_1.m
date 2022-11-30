clear;
clc;

table = 2;
[x, y, x1] = variant(27,table);

A = kf(x,y);
disp(A);
y1 = lagr_val(x,y,x1); 
disp(x1);
disp(y1);

a = min(x);
b = max(x);
step = 0.1;
x2 = a:step:b; 

y2 = lagr_val(x,y,x2); 

h = (max([y y1 y2]) - min([y y1 y2])) * 0.02;

y3 = polinom_val(A,x2)+h;
% смещение на h вверх

figure(1);
plot(x,y, 'o' , x1,y1, 'k*', x2,y2, 'r', x2, y3, 'g');
axis([a-1 b+1 min([y y1 y2])-h max([y y1 y2])+h]);
xlabel('x');
ylabel('y');
grid on;
legend('Заданные точки','Расчетные точки','Интерполяционная функция', 'Расчет полинома');