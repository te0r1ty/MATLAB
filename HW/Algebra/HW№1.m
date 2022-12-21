% MATLAB алгебра семинар 2 Поляков Максим
%% task 1
A = [3.25 -1.07 2.34;10.10 0.25 -4.78;5.04 -7.79 3.31]

%% task 2
B = rand(3,3)

%% task 3
answer3 = A+10*B
answer33 = A*B
answer333 = B' 

%% task 4
answer4 = det(B)

%% task 5
C = zeros(3,1)
C(2,1) = 5.71
C(3,1) = -3.61

%% task 6
answer6 = A\C

%% task 7
syms x;
G = [2*cos(x) 1;1 2*sin(x)];
answer7 = solve(det(G))

%% task 8a
a = [2 -1 -1 3;-1 2 1 0;3 -5 -2 1];

d = [a(:,1) a(:,2) a(:,3)];

d1 = [a(:,4) a(:,2) a(:,3)];
d2 = [a(:,1) a(:,4) a(:,3)];
d3 = [a(:,1) a(:,2) a(:,4)];

answer8ax = det(d1)/det(d)
answer8ay = det(d2)/det(d)
answer8az = det(d3)/det(d)

%% task 8b
b = [2 1 0 5;1 0 3 16;0 5 -1 10];

de = [b(:,1) b(:,2) b(:,3)];

de1 = [b(:,4) b(:,2) b(:,3)];
de2 = [b(:,1) b(:,4) b(:,3)];
de3 = [b(:,1) b(:,2) b(:,4)];

answer8bx = det(de1)/det(de)
answer8by = det(de2)/det(de)
answer8bz = det(de3)/det(de)

%% task 9
c9 = [1 1 1 2;1 3 1 4;1 1 3 0];

D = rref(c9);

answer9 = D(:,4)

%% task 10
A = [0 -2;1 -3];
B = [5 1;-1 0];

answer10 = (3*B)^2 - 2*(B*(A^-1) - eye(2))'

%% task 11
A = [3.81 0.28 1.28 0.75;2.25 1.32 4.58 0.49;5.31 6.38 0.98 1.04;9.39 2.45 3.35 2.28];
b = [1;1;1;1];

[L,U] = lu(A);
answer11 = U\(L\b)
answer11chek = A*answer11

%% task 12
matrix = rand(10,9);

answer12 = matrix(end,end-1)

%% task 13
A = [1 -1 3 8;2 1 -4 -4;3 1 -3 1];

D13 = rref(A);

answer13 = D13(:,4)
