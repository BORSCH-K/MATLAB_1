function [ x1, D ] = Newton(x, F, F1)
 D=-F/F1;
 x1=x+D;
end

