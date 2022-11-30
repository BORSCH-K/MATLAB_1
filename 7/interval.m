function [itr] = interval(x, x1)
n = length(x); 
n1 = length(x1); 
itr = zeros(n1, 1); 
k = 1; 

for i = 1:n1 
    if  (x1(i) < x(1)) 
        itr(i) = 0; 
    else
       for j = k:n-1 
           if (x(j)<=x1(i) && x1(i)<=x(j+1)) 
               itr(i)= j;
               k = j;
           end   
       end
       if x1(i)>x(n) 
           itr(i)=n;
       end
   end
end
end