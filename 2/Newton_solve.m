x=-5:0.1:5;
y1=exp(-x)+cos(x)-3;
y2=2*(x+2).^2-8;

% ������� ������� ������������ z=F1(x1,x2) � z=F2(x1,x2) ���������� z=0
figure(1); 
plot(x,y1,'b',x,y2,'r');
axis([-5 5 -10 10]);
xlabel('x1');
ylabel('x2');
grid on;
legend('x2=y1(x1)','x2=y2(x1)');
title ('������� ������������ x2=y(x1)');

% ------------ 3D-������� ������������ z=F1(x1,x2) � z=F2(x1,x2) --------
Xmin=-5;       % ����������� ���������� �� x1 � x2
Xstep=0.25;    % ��� ����� �������
Xmax=5;        % ������������ ���������� �� x1 � x2

figure(2);
[X1 X2]=meshgrid(Xmin:Xstep:Xmax);
F1=exp(-X1)+cos(X1)-X2-3;
F2=2*(X1+2).^2-X2-8;
Z=zeros(size(X1));
mesh(X1,X2,F1);
hold on;
mesh(X1,X2,F2);
mesh(X1,X2,Z);
axis([-5 5 -5 5 -10 10]);
xlabel('X1'), ylabel('X2'), zlabel('F1(X1,X2), F2(X1,X2)');
title('3D-������� ������������ z=F1(x1,x2), z=F2(x1,x2), z=0');

% ------------- ����� ������ ������� ��� ������������ F1 � F2 -----------
figure(3);    
H=(0:0.5:10); % �������� � ��� ����� ������
contour(X1,X2,F1,H);
hold on;
contour(X1,X2,F2,H);
xlabel('X1'), ylabel('X2');
title('����� ������ ������� ��� ������������ F1 � F2');
grid on;

% ------------- ������� ����������� ��������� ������� ������� -----------
eps=0.001;  % �������� ��������
kmax=50;    % ������������ ����� ��������
X=[-1; -1]; % ��������� �����������
[F J]=fun1(X);
[Xnew,D]=Newton(X,F,J); 
k=1;        % ������� ��������
while (max(abs(D)>eps))&&(k<kmax)
    X=Xnew;
    [F J]=fun1(X);
    [Xnew,D]=Newton(X,F,J);
    k=k+1;
    disp(Xnew);    
end
disp('Root:');
disp(Xnew);
disp('Number of iterations:');
disp(k);