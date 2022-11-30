clc;
clear;

h = 0.2;
x = 2:h:4;
y = EL_CSH(x);

disp(x);
disp(y);

M = progon (x, y);
x1 = min(x):0.01:max(x);
itr = interval(x, x1);

y1 = spline_val(x,y,x1,itr,M); 

a = min([x x1]);
b = max([x x1]);

figure(1);
plot(x,y, 'o' , x1,y1, 'r');
axis([a-0.5 b+0.5 min([y y1])-0.5 max([y y1])+0.5]);
xlabel('x');
ylabel('y');
grid on;
legend("Расчетные точки", "Интерполяция");