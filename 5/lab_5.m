clear;
clc;

table = 2;
[x, y, x1] = variant(27,table);

M = progon (x, y);
itr = interval(x, x1);
y1 = spline_val(x,y,x1,itr,M); 
disp(x1);
disp(y1);

a = min([x x1]);
b = max([x x1]);
step = 0.1;
x2 = a:step:b; 
itr = interval(x,x2);
y2 = spline_val(x,y,x2,itr, M); 

figure(1);
plot(x,y, 'o' , x1,y1, '*', x2,y2, 'r');
axis([a-1 b+1 min([y y1 y2])-1 max([y y1 y2])+1]);
xlabel('x');
ylabel('y');
grid on;
legend('Заданные точки','Расчетные точки','Интерполяционная функция');