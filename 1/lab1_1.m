%-------------------------------------------

x = -10:0.1:10;
y = (-atan(x)-1.2).*x;
figure(1);
plot(x,y,'-b');
axis([-10 10 -2 2]);
xlabel('x');
ylabel('y');
grid on;
title ('График y=f(x)');

%-------------------------------------------
% x1 = -2.5704...
% x2 = 0
eps=1e-3; 
kmax=50; 
x=-4;
k=0;
[F, F1]=fun1(x);
[x1,D]=Newton(x,F,F1); 
k=k+1;
fprintf('%i\t %f\t %f \n', k, x1, D);
while (abs(D)>eps)&&(k<kmax)
    x=x1;
    [F, F1]=fun1(x);
    [x1,D]=Newton(x,F,F1);
    k=k+1;
    fprintf('%i\t %f\t %f \n', k, x1, D);
end
fprintf('Root: x =%f\n', x1);
fprintf('Number of iterations: k = %i\n', k);
fprintf('Accuracy: D =%f\n', D);