A0 = [700 -8 7; 3.5 1400 6.5; -3 3 2100];
b = [-560;9824;16850];
eps = 0.001;

if det(A0) == 0
    disp('Решений нет!');
else
    A = [A0 b];
    disp('Расширенная матрица:');
    disp(A);
    n = 3;
    i = 1;
    disp('Прямой ход:');
    for k = 1:n
        if abs(A(k,k)) < eps 
            [A] = fun_1(A, k);
            fprintf('k=%i i=%i j=%i\n',k,i,j);
            disp(A);
        end
        for j = (n+1):(-1):k
            A(k,j) = A(k,j)/A(k,k);
            fprintf('k=%i i=%i j=%i\n',k,i,j);
            disp(A);
        end
        for i = (k+1):n
            for j = (n+1):-1:k
                A(i,j) = A(i,j) - A(i,k)*A(k,j); 
            end
            fprintf('k=%i i=%i j=%i\n',k,i,j);
            disp(A);
        end
    end
    disp('Обратный ход:');

    for i = (n):-1:1
        X(i) = A(i,n+1);
        for j = (i+1):n
            X(i) = X(i) - A(i,j)*X(j);            
        end
        disp(X);
    end
    %disp(X);
    D = max(max(abs(b - A0*X')));
    %d = max(D);
    disp('MAX L-норма:');
    disp(D);
end
   