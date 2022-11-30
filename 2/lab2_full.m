x1=-5:0.1:5;
f1=-((x1+1).^3) + 2;
f2=(1/7)*x1.^3 + 4;

% графики сечений поверхностей z=F1(x1,x2) и z=F2(x1,x2) плоскостью z=0
figure(1); 
plot(x1,f1,'b',x1,f2,'r');
axis([-5 5 -10 10]);
xlabel('x1');
ylabel('x2');
grid on;
legend('x2=f1(x1)','x2=f2(x1)');
title ('Графики зависимостей x2=f(x1)');

% ------------ 3D-графики поверхностей z=F1(x1,x2) и z=F2(x1,x2) --------
Xmin=-5;       % минимальная координата по x1 и x2
Xstep=0.25;    % шаг сетки графика
Xmax=5;        % максимальная координата по x1 и x2

figure(2);
[X1, X2]=meshgrid(Xmin:Xstep:Xmax);
F1=-((X1+1).^3) + 2 - X2;
F2=(1/7)*X1.^3 + 4 - X2;
Z=zeros(size(X1));
mesh(X1,X2,F1,'EdgeColor','b');
hold on;
mesh(X1,X2,F2,'EdgeColor','y');
mesh(X1,X2,Z,'EdgeColor','g');
axis([-5 5 -5 5 -10 10]);
xlabel('X1'),
ylabel('X2'), 
zlabel('F1(X1,X2), F2(X1,X2)');
title('3D-графики поверхностей z=F1(x1,x2), z=F2(x1,x2), z=0');

% ------------- Линии равных уровней для поверхностей F1 и F2 -----------
figure(3);    
H=(0:0.5:10); % диапазон и шаг линий уровня
contour(X1,X2,F1,H);
hold on;
contour(X1,X2,F2,H);
xlabel('X1'), ylabel('X2');
title('Линии равных уровней для поверхностей F1 и F2');
grid on;

% ------------- Решение нелинейного уравнения методом Ньютона -----------
eps=0.001;  % заданная точность
kmax=50;    % максимальное число итераций
X=[-1; -1]; % начальное приближение
[F, J]=fun(X);
[Xnew,D]=Newton(X,F,J); 
k=1;        % счетчик итераций
while (max(abs(D)>eps))&&(k<kmax)
    X=Xnew;
    [F, J]=fun(X);
    [Xnew,D]=Newton(X,F,J);
    k=k+1;
    disp(Xnew);    
end
disp('Root:');
disp(Xnew);
disp('Number of iterations:');
disp(k);