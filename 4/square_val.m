function [y1] = square_val(x,y,x1,itr)
%x = [-5.5 -3.5 -1 2 4.5 5.5 6.8 7.7];
%y = [2.75 2.1 1.6 2.2 4 5.5 8.5 13];
%x1 = [-10 -2 3.5 6.5 7.5 8];
%itr = 0 2 4 6 7 8
n = length(x); % 8
n1 = length(x1);
y1 = zeros(n1,1); % 
a = ones(n,1);
b = ones(n,1);
c = ones(n,1);
for i = 1:(n-2)
    X = [x(i)^2 x(i) 1;
        x(i+1)^2 x(i+1) 1;
        x(i+2)^2 x(i+2) 1];
    Y = [y(i); y(i+1); y(i+2)];
    C = Gauss(X, Y);
    a(i) = C(1);
    b(i) = C(2);
    c(i) = C(3);
end
disp(X);
disp(Y);
disp(C);
a(n-1) = a(n-2);
b(n-1) = b(n-2);
c(n-1) = c(n-2);
%n1 = length(x1);
for i = 1:n1
    j = itr(i);
    if j==0
        y1(i)=NaN;
    else
        if (0<j && j<=n-1)
            y1(i) = a(j)*x1(i)^2+b(j)*x1(i)+c(j);
        else
            if j==n
                y1(i)=NaN;
            end
        end
    end
end
end

