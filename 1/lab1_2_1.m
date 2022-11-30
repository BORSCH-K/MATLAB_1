x0=-10:0.1:10;
y1 = x0;
y2 = exp(x0)-sin(x0)-3;
%t0=-5:0.1:10;
[t] = fun2(x0);

eps=1e-3;
kmax=50;
x = 1;
k = 0;
[x1] = fun2(x);
[D] = fun_D(x);
%t(k+1)=x1;
fprintf('%f\t %f \n', x1, D);
%fprintf('%f\t %f \n', x1, D);
k = k+1;
while (abs(D)>eps)&&(k<kmax)
    x=x1;
    [x1]=fun2(x);
    [D] = fun_D(x);
    %t(k+1)=x1;
    %fprintf('%f\t\n', t);
    fprintf('%f\t %f \n', x1, D);
    k = k+1;
end
%fprintf('%f\n', t);
%fprintf('Good!\n');
fprintf('Root: x =%f\n', x1);
fprintf('Number of iterations: k = %i\n', k);
fprintf('Accuracy: D =%f\n', D);

figure(1); 
plot(x0,y1,'b',x0,y2,'r', x0, t, 'g'); 
% x0 and t of different lengths!!!
axis([-10 10 -10 10]);
xlabel('x');
ylabel('y');
grid on;
legend('y1=x','y2=exp(x)-sin(x)-3', 'y3 = x1');
title ('Графики зависимостей');