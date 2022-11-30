function [itr] = interval(x, x1)
n = length(x); % количество начальных х  // 8
n1 = length(x1); % количество значейний функции // 6
itr = zeros(n1, 1); % матрица-столбец - n1 строчек, 1 столбец
k = 1; 

for i = 1:n1 % для каждого из значейний функции 
    if  (x1(i) < x(1)) % если i элемент зн.ф. <= н.х
        itr(i) = 0; 
    else
       for j = k:n-1 % k = 6
           if (x(j)<=x1(i) && x1(i)<=x(j+1)) 
               itr(i)= j;
               k = j;
           end   
       end
       if x1(i)>x(n) % если элемент зн.ф-ции больше последнего элемента х
           itr(i)=n;
       end
   end
end
end