clc;
% ---- Этап 1: Отделение корней уравнения ----
x=-10:0.1:10;
y=1./x+0.3;
figure(1);
plot(x,y,'-b','LineWidth',2);
axis([-10 10 -10 10]);
xlabel('x');
ylabel('y');
grid on;
title ('График функции y=f(x)');
 
% ---- Этап 2: Уточнение корней уравнения ----
eps=1e-3; 
kmax=50; 
x=-2;
k=0;
[F F1]=fun1(x);
[x1,D]=Newton(x,F,F1); 
k=k+1;
fprintf('%i\t %f\t %f \n', k, x1, D);
while (abs(D)>eps)&&(k<kmax)
    x=x1;
    [F F1]=fun1(x);
    [x1,D]=Newton(x,F,F1);
    k=k+1;
    fprintf('%i\t %f\t %f \n', k, x1, D);
end
fprintf('Root: x =%f\n', x1);
fprintf('Number of iterations: k = %i\n', k);
fprintf('Accuracy: D =%f\n', D);