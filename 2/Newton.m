function [ Xnew, D ] = Newton(X, F, J)
D=-J\F;
Xnew=X+D;
end

