function [y1] = lagr_val(x,y,x1)

n = length(x);
n1 = length(x1);
y1 = zeros(1,n1);

for k = 1:n1
    if ((x1(k) < x(1)) || (x1(k) > x(n)))
        y1(k) = NaN;
    else
        for i = 1:n
            P = 1;
            for j = 1:n
                if (i ~= j)
                    P = P*(x1(k)-x(j))/(x(i)-x(j));
                end
            end
            y1(k) = y1(k)+P*y(i);
        end
    end
end
end