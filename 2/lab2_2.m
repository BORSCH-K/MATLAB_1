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