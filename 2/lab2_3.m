% ------------- Решение нелинейного уравнения методом Ньютона -----------
eps=0.001;  % заданная точность
kmax=50;    % максимальное число итераций
X=[-1; -1]; % начальное приближение
[F, J]=fun1(X);
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