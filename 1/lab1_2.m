%-------------------------------------------
x = -10:0.1:10;
y = exp(x)-sin(x)-3;
figure(1);
plot(x,y,'-b');
axis([-10 10 -5 5]);
xlabel('x');
ylabel('y');
grid on;
title ('График y=f(x)');

%-------------------------------------------

eps=1e-3;
kmax=50; 
x = 1;
k = 0;
[x1, D] = fun2(x);
fprintf('%f\t %f \n', x1, D);
k = k+1;
while (abs(D)>eps)&&(k<kmax)
    x=x1;
    [x1, D]=fun2(x);
    fprintf('%f\t %f \n', x1, D);
    k = k+1;
end
fprintf('Root: x =%f\n', x1);
fprintf('Number of iterations: k = %i\n', k);
fprintf('Accuracy: D =%f\n', D);