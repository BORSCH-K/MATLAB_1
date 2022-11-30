clc;
A0 = [700 -8 7; 3.5 1400 6.5; -3 3 2100];
b = [-560;9824;16850];
%x = A\b;
%disp(x);
%eps = max(abs(b - A*x));
%disp(eps);
eps = 0.001;

% процедура выбора ведущего элемента?

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
        [m, t] = max(abs(A(k:n,k)));
        disp(m); 
        disp(t);
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

    %A = [1 2 3 4; 5 6 7 8; 9 11 22 33];
    %for t = n:-1:1
    %    X(t) = A(t, n+1);
    %end
    %disp(X);

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