function [y1] = spline_val(x,y,x1,itr,M)
n = length(x)-1; 
n1 = length(x1);
y1 = zeros(1,n1); 
h(1:n) = x(2:n+1) - x(1:n);

for i = 1:n1
    j = itr(i);
    if (j==0)
        y1(i) = y(1) + ((x(1)-x(2))*M(2)/6 + (y(2)-y(1))/(x(2)-x(1))) * (x1(i)-x(1));
    else
        if (0 < j && j <= n)
            y1(i) = (1/(6*h(j))) * ((M(j)*(x(j+1)-x1(i))^3) + M(j+1)*(x1(i)-x(j))^3) + (1/h(j)) * ((y(j)-((M(j)*h(j)^2)/6)) * (x(j+1)-x1(i)) + (y(j+1)-((M(j+1)*h(j)^2)/6)) * (x1(i)-(x(j))));
        else
            if (j == n+1)
                y1(i) = y(n+1) + ((x(n+1)-x(n))*M(n)/6 + (y(n+1)-y(n))/(x(n+1)-x(n))) * (x1(i)-x(n+1));
            end
        end
    end
end
end

