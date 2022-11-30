clear;
clc;

table = 1;
[x0, y0, x1] = variant(27,table);

itr = interval(x0, x1); % интервал между точками
y1 = square_val(x0,y0,x1,itr); 
disp('----');
disp(x1);
disp(y1);

a = min(x0);
b = max(x0);
step = 0.1;
x2 = a:step:b; % 
% -5.5 -4.5 -3.5 ... 7.5
% n = 8 n1 = >10
itr = interval(x0,x2);
y2 = square_val(x0,y0,x2,itr); 

figure(1);
plot(x0,y0, 'o' , x1,y1, '*', x2,y2, 'r');
axis([a-1 b+1 min([y0 y1' y2'])-1 max([y0 y1' y2'])+1]);
xlabel('x');
ylabel('y');
grid on;
legend('Заданные точки','Расчетные точки','Интерполяционная функция');