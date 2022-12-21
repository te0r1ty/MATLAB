% MATLAB алгебра семинар 4 Поляков Максим
%% task 1
figure("Name", "task 1")


a = [2 3 4]
b = [3 5 2]
c = [1 1 1]

chek1 =(a+b)+c == a+(b+c)

chek11 = isequal((a+b)+c,a+(b+c))

subplot(1,2,2)
grid on,  axis equal
hold on
view(-55,5)
% вектор а+б
quiver3(0,0,0,a(1)+b(1),a(2)+b(2),a(3)+b(3),1,"color","blue")
text((a(1)+b(1))/2,(a(2)+b(2))/2,(a(3)+b(3))/2,"\bfa+b")

% вектор c
quiver3(a(1)+b(1),a(2)+b(2),a(3)+b(3),1,1,1,1,"color","blue")
text(a(1)+b(1)+1/2,a(2)+b(2)+1/2,a(3)+b(3)+1/2,"\bfc")

% вектор a
quiver3(0,0,0,a(1),a(2),a(3),1,"color","magenta")
text(a(1)/2,a(2)/2,a(3)/2,"\bfa")

% вектор b+c
quiver3(a(1),a(2),a(3),b(1)+c(1),b(2)+c(2),b(3)+c(3),1,"color", "magenta")
text(a(1)+(b(1)+c(1))/2,a(2)+(b(2)+c(2))/2,a(3)+(b(3)+c(3))/2,"\bfb+c")

% вектор a+b+c
quiver3(0,0,0,a(1)+b(1)+c(1),a(2)+b(2)+c(2),a(3)+b(3)+c(3),1,"color","red")
text((a(1)+b(1)+c(1))/2,(a(2)+b(2)+c(2))/2,(a(3)+b(3)+c(3))/2,"\bfa+b+c")



subplot(1,2,1)
grid on,  axis equal
hold on
view(60,15)

% векторы a
quiver3(0,0,0,a(1),a(2),a(3),1,"color","magenta")
text(a(1)/2,a(2)/2,a(3)/2,"\bfa")

quiver3(b(1),b(2),b(3),a(1),a(2),a(3),1,"--","color","m")
text(b(1)+a(1)/2,b(2)+a(2)/2,b(3)+a(3)/2,"\bfa")

% векторы б
quiver3(0,0,0,b(1),b(2),b(3),1,"color","c")
text(b(1)/2,b(2)/2,b(3)/2,"\bfb")

quiver3(a(1),a(2),a(3),b(1),b(2),b(3),1,"--","color","c")
text(b(1)/2+a(1),b(2)/2+a(2),b(3)/2+a(3),"\bfb")

% вектор а+б
quiver3(0,0,0,b(1)+a(1),b(2)+a(2),b(3)+a(3),1,"color","r","linewidth",1.5)
text((b(1)+a(1))/2,(b(2)+a(2))/2,(b(3)+a(3))/2,"\bfa+b")
%% task 2
a = [4 2 3]
b = [1 5 2]
alpha = 4
beta = 3

chek2 = isequal(alpha*(a + b),alpha*a + alpha*b)
chek22 = isequal((alpha + beta)*a,alpha*a + beta*a)
chek222 = isequal(alpha*(beta*a),(alpha*beta)*a)

%% task 3
figure("Name", "task 3")



subplot(1,2,1)
grid on,  axis equal
hold on
view(45,20)
a = [3 4 5]

lengtha3 = sqrt(a(1)^2 + a(2)^2 + a(3)^2)
lengtha33 = norm(a)

a0 = a/lengtha3
cheka3 = isequal(norm(a0),1)

quiver3(0,0,0,3,4,5,1,"color", "g")
quiver3(0,0,0,a0(1),a0(2),a0(3),1,"color", "r")



subplot(1,2,2)
grid on,  axis equal
hold on
axis([-1 5 -1 3]) 

b = [4 2]

lengthb3 = sqrt(b(1)^2 + b(2)^2)
lengthb33 = norm(b)

b0 = b/lengthb3
chekb3 = isequal(norm(b0),1)

quiver(0,0,b(1),b(2),1,"color","g")
quiver(0,0,b0(1),b0(2),1,"color","r")

%% task 4
a = [3 4 5]

Oax = acosd(a(1)/norm(a))
Oay = acosd(a(2)/norm(a))
Oaz = acosd(a(3)/norm(a))

orta = round((a(1)/norm(a))^2 + (a(2)/norm(a))^2 + (a(3)/norm(a))^2,3)
cheka4 = isequal(orta,1)



b = [4 2]

Obx = acosd(b(1)/norm(b))
Oby = acosd(b(2)/norm(b))

ortb = round((b(1)/norm(b))^2 + (b(2)/norm(b))^2)
chekb4 = isequal(ortb,1)

%% task 5
figure("Name", "task 5")
grid on,  axis equal
hold on
view(165,10)


a = [1 -2 0]
b = [0 1 1]
c = [1 2 2]

chek5 = isequal(isequal(dot(cross(a,b),c),0),false)

% Ox
line([0 1],[0 0],[0 0],"color","k")
plot3(1,0,0,">","color","k","linewidth",4)

% Oy
line([0 0],[0 1],[0 0],"color","k")
plot3(0,1,0,">","color","k","linewidth",4)

% Oz
line([0 0],[0 0],[0 1],"color","k")
plot3(0,0,1,">","color","k","linewidth",4)



% вектор а
line([0 1],[0 -2],[0 0],"color","g")
plot3(1,-2,0,">","color","g","linewidth",4)

line([0 1/norm(a)],[0 -2/norm(a)],[0 0],"color","r")
plot3(1/norm(a),-2/norm(a),0,">","color","r","linewidth",4)



% вектор b
line([0 0],[0 1],[0 1],"color","g")
plot3(0,1,1,">","color","g","linewidth",4)

line([0 0],[0 1/norm(b)],[0 1/norm(b)],"color","r")
plot3(0,1/norm(b),1/norm(b),">","color","r","linewidth",4)



% вектор c
line([0 1],[0 2],[0 2],"color","g")
plot3(1,2,2,">","color","g","linewidth",4)

line([0 1/norm(c)],[0 2/norm(c)],[0 2/norm(c)],"color","r")
plot3(1/norm(c),2/norm(c),2/norm(c),">","color","r","linewidth",4)

%% task 6
figure("Name", "task 6")
grid on,  axis equal
axis([-2 12 -8 14])
hold on

syms m n 
p = [2 -3]
q = [1 2]
s = [9 4]

chek6 = isequal(isequal(p(1)/q(1),p(2)/q(2)),false)

mandn = solve(s-m*p-n*q==[0 0]);

x = mandn.m
y = mandn.n

% векторы p
quiver(0,0,p(1),p(2),1,"color","b","linewidth",3)
text(p(1)/2,p(2)/2,"\bfp")

quiver(0,0,p(1)*x,p(2)*x,1,"--","color","r")
text(x*p(1)/1.5,x*p(2)/1.5,"\bfp*m")



% векторы q
quiver(0,0,q(1),q(2),1,"color","b","linewidth",3)
text(q(1)/2,q(2)/2,"\bfq")

quiver(0,0,q(1)*y,q(2)*y,1,"--","color","r")
text(y*q(1)/2,y*q(2)/2,"\bfq*n")



% вектор s
quiver(0,0,s(1),s(2),1,"color","r")
text(s(1)/2,s(2)/2,"\bfs")



% X
quiver(0,0,10,0,1,"color","k")
text(10,0,"\bfX")

quiver(0,0,1,0,1,"color","c")
text(0.5,0,"\bfi")


% Y
quiver(0,0,0,12,1,"color","k")
text(0,12,"\bfY")   

quiver(0,0,0,1,1,"color","c")
text(0,0.5,"\bfj")

%% task 7
figure("Name", "task 7")
syms q w e r t y

a = [3 2]
b = [-2 1]
c = [4 -4]

qandw = solve(a - q*b - c*w == [0 0]);
eandr = solve(b - e*a - c*r == [0 0]);
tandy = solve(c - t*a - y*b == [0 0]);

xab = qandw.q
yac = qandw.w

xba = eandr.e
ybc = eandr.r

xca = tandy.t
ycb = tandy.y

subplot(2,2,1)
grid on,  axis equal
hold on
% X
quiver(0,0,6,0,1,"color","k")
text(6,0,"\bfX")

quiver(0,0,1,0,1,"color","c")
text(0.5,0,"\bfi")

% Y
quiver(0,0,0,6,1,"color","k")
text(0,6,"\bfY")   

quiver(0,0,0,1,1,"color","c")
text(0,0.5,"\bfj")

% векторы
quiver(0,0,a(1),a(2),1,"color","b")
text(a(1)/2,a(2)/2,"\bfa")
quiver(0,0,b(1),b(2),1,"color","b")
text(b(1)/2,b(2)/2,"\bfb")
quiver(0,0,c(1),c(2),1,"color","b")
text(c(1)/2,c(2)/2,"\bfc")



subplot(2,2,2)
grid on,  axis equal
hold on
% X
quiver(0,0,6,0,1,"color","k")
text(6,0,"\bfX")

quiver(0,0,1,0,1,"color","c")
text(0.5,0,"\bfi")

% Y
quiver(0,0,0,6,1,"color","k")
text(0,6,"\bfY")   

quiver(0,0,0,1,1,"color","c")
text(0,0.5,"\bfj")

% векторы
quiver(0,0,a(1),a(2),1,"color","r")
text(a(1)/2,a(2)/2,"\bfa")

quiver(0,0,b(1)*xab,b(2)*xab,1,"color","b")
text(b(1)*xab/2,b(2)*xab/2,"\bfm*b")

quiver(b(1)*xab,b(2)*xab,c(1)*yac,c(2)*yac,1,"color","b")
text(b(1)*xab + c(1)*yac/2,b(2)*xab + c(2)*yac/2,"\bfn*c")



subplot(2,2,3)
grid on,  axis equal
hold on
% X
quiver(0,0,6,0,1,"color","k")
text(6,0,"\bfX")

quiver(0,0,1,0,1,"color","c")
text(0.5,0,"\bfi")

% Y
quiver(0,0,0,6,1,"color","k")
text(0,6,"\bfY")   

quiver(0,0,0,1,1,"color","c")
text(0,0.5,"\bfj")


% векторы
quiver(0,0,b(1),b(2),1,"color","r")
text(b(1)/2,b(2)/2,"\bfb")

quiver(0,0,a(1)*xba,a(2)*xba,1,"color","b")
text(a(1)*xba/2,a(2)*xba/2,"\bfm*a")

quiver(a(1)*xba,a(2)*xba,c(1)*ybc,c(2)*ybc,1,"color","b")
text(a(1)*xba + c(1)*ybc/2,a(2)*xba + c(2)*ybc/2,"\bfn*c")



subplot(2,2,4)
grid on,  axis equal
hold on
% X
quiver(0,0,6,0,1,"color","k")
text(6,0,"\bfX")

quiver(0,0,1,0,1,"color","c")
text(0.5,0,"\bfi")

% Y
quiver(0,0,0,6,1,"color","k")
text(0,6,"\bfY")   

quiver(0,0,0,1,1,"color","c")
text(0,0.5,"\bfj")


% веткоры
quiver(0,0,c(1),c(2),1,"color","r")
text(c(1)/2,c(2)/2,"\bfb")

quiver(0,0,a(1)*xca,a(2)*xca,1,"color","b")
text(a(1)*xca/2,a(2)*xca/2,"\bfm*a")

quiver(a(1)*xca,a(2)*xca,b(1)*ycb,b(2)*ycb,1,"color","b")
text(a(1)*xca + b(1)*ybc/2,a(2)*xca + b(2)*ybc/2,"\bfn*b")

%% task 8
figure("Name", "task 8")

syms x y z
a = [2 1 0]
b = [1 -1 2]
c = [2 2 -1]
d = [3 7 -7]

xyz = solve(a == x*b + c*y + z*d)

i = xyz.x
j = xyz.y
k = xyz.z

subplot(1,2,1)
grid on,  axis equal
hold on
view(150,30)


% оси
quiver3(0,0,0,5,0,0,1,"color","k")
quiver3(0,0,0,0,5,0,1,"color","k")
quiver3(0,0,0,0,0,5,1,"color","k")
text(5,0,0,"\bfX")
text(0,5,0,"\bfY")
text(0,0,5,"\bfZ")

% орты осей
quiver3(0,0,0,1,0,0,1,"color","c")
quiver3(0,0,0,0,1,0,1,"color","c")
quiver3(0,0,0,0,0,1,1,"color","c")
text(1,0,0,"\bfx")
text(0,1,0,"\bfy")
text(0,0,1,"\bfz")

%векторы
quiver3(0,0,0,a(1),a(2),a(3),1,"color","b")
quiver3(0,0,0,b(1),b(2),b(3),1,"color","b")
quiver3(0,0,0,c(1),c(2),c(3),1,"color","b")
text(a(1)/2,a(2)/2,a(3)/2,"\bfa")
text(b(1)/2,b(2)/2,b(3)/2,"\bfb")
text(c(1)/2,c(2)/2,c(3)/2,"\bfc")



subplot(1,2,2)
grid on,  axis equal
hold on
view(170,15)

% оси
quiver3(0,0,0,5,0,0,1,"color","k")
quiver3(0,0,0,0,5,0,1,"color","k")
quiver3(0,0,0,0,0,5,1,"color","k")
text(5,0,0,"\bfX")
text(0,5,0,"\bfY")
text(0,0,5,"\bfZ")

% орты осей
quiver3(0,0,0,1,0,0,1,"color","c")
quiver3(0,0,0,0,1,0,1,"color","c")
quiver3(0,0,0,0,0,1,1,"color","c")
text(1,0,0,"\bfx")
text(0,1,0,"\bfy")
text(0,0,1,"\bfz")

% векторы
quiver3(0,0,0,a(1),a(2),a(3),1,"color","r")
quiver3(0,0,0,b(1)*i,b(2)*i,b(3)*i,1,"color","b")
quiver3(b(1)*i,b(2)*i,b(3)*i,c(1)*j,c(2)*j,c(3)*j,1,"color","b")
quiver3(b(1)*i+c(1)*j,b(2)*i+c(2)*j,b(3)*i+c(3)*j,d(1)*k,d(2)*k,d(3)*k,1,"color","b")
text(a(1)/2,a(2)/2,a(3)/2,"\bfa")
text(b(1)*i/2,b(2)*i/2,b(3)*i/2,"\bfb*i")
text(b(1)*i + c(1)*j/2,b(2)*i + c(2)*j/2,b(3)*i + c(3)*j/2,"\bfc*j")
text(b(1)*i + c(1)*j + d(1)*k/2,b(2)*i + c(2)*j + d(2)*k/2,b(3)*i + c(3)*j + d(3)*k/2,"\bfd*k")

%% task 9
a = [-1 2 0]
b = [0 1 2]
c = [1 2 2]
a1 = [0 0 0]

alpha = 32

%1
chek91 = isequal(dot(a,b),dot(b,a))
%2
chek92 = isequal(dot(a+b,c),dot(a,c) + dot(b,c))
%2'
chek922 = isequal(dot(a,b + c),dot(a,b) + dot(a,c))
%3
chek93 = isequal(dot(alpha*a,b),alpha*dot(a,b))
%3'
chek933 = isequal(dot(a,alpha*b),alpha*dot(a,b))
%4
chek94 = dot(a,a)>0
%4
chek944 = dot(a1,a1) == 0

%% task 10
a = [-1 2 0]
b = [0 1 2]
c = [1 2 2]

% (2)
check102 = isequal(dot(a,b)*c,a*dot(b,c))
% (3)
check103 = isequal(dot(a,b),dot(a,c))
check1033 = isequal(b,c)
%(4)
check4 = isequal(dot(a,b)*b,a*dot(b,b))
