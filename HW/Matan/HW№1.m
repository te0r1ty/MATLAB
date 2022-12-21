% MATLAB матан семинар 2 Поляков Максим
%% task 1.1
options = optimset('Display','iter'); 

x0 = [1,1]

[x,fval,exitflag,output] = fsolve(@firstI,x0,options);

%% task 1.2
options = optimset('Display','iter'); 

x0 = [1,1,0]

[x,fval,exitflag,output] = fsolve(@firstII,x0,options);

%% task 2
syms x

f = (x + 10)^(1/x)

limleft = limit(f,x,0,'left')
limright = limit(f,x,0,'right')

%% task 3
syms x xd

f = atan(x)

yd = atan(xd+x) - atan(x)
xd = xd

d = diff(f,x,1)
dd = limit(yd/xd,xd,0)

%% task 4
syms x

f = (9*x^2 - 1)/(x + 1/3)

lim = limit(f,x,-1/3)

%% task 5
syms x 

f = (3*cos(5*x^2))^3

d = diff(f)

%% task 6
syms x y z

u1 = sin(x + 2*y) + 2*sqrt(x*y*z);
u2 = log(3-x^2) + x*(y^2)*z;
u3 = x^2 - atan(y + z^3);
u4 =(x^3)*(y^2)*z + 3*x - 5*y + z + 2;


diff_u1 = diffxyz(u1);
diff_u2 = diffxyz(u2);
diff_u3 = diffxyz(u3);
diff_u4 = diffxyz(u4);

%% task 7
syms x

y1 = sin(x)/x
y2 = (1 - exp(-x))/x
y3 = (1 - x)/log(x)

lim1 = limit(y1,x,0)
lim2 = limit(y2,x,Inf)
lim3 = limit(y3,x,1)

%% task 8
syms x

y = (x^2)*cos(2*x)

diff8 = diff(y,x,6)

%% task 9
syms x

y = 1 - exp(-x)/x

lim = limit(y,x,Inf)

%% task 10
syms x a n

y = exp(-a*(x^5)) + log(a^n + x^a) - a*n/x^3

diff9   = diff(y,x,2)
diff99  = diff(y,a,2)
diff999 = diff(y,n,2)

%% функции
function F = firstI(x)
F(1) = x(1)^2 - 2*x(2)^2 + 1;
F(2) = -3*x(1)^2 + x(2)^2 + 2;
F(3) = x(1)^3 + x(2)^2 - 2;
end

function F = firstII(x)
F(1) = x(1)^2 - 2*x(2)^2 + x(3) + 1;
F(2) = -3*(x(1)^2) + x(2)^2 + x(3) + 2;
end

function F = diffxyz(u)
syms x y z
F(1) = diff(u,x,2);
F(2) = diff(diff(u,x,1),y,1);
F(3) = diff(diff(u,x,1),z,1);

F(4) = diff(u,y,2);
F(5) = diff(diff(u,y,1),x,1);
F(6) = diff(diff(u,y,1),z,1);

F(7) = diff(u,z,2);
F(8) = diff(diff(u,z,1),x,1);
F(9) = diff(diff(u,z,1),y,1);
end
