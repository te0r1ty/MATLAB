% MATLAB матан семинар 4 Поляков Максим
%% task 1
figure("Name","task 1")
grid on, axis equal, hold on
view(30,20)

t = 0:0.01:100

x = exp(-abs(t-100)/100).*sin(t)
y = exp(-abs(t-100)/100).*cos(t)
z = t

plot3(x,y,z)

%% task 2
figure("Name","task 2")
grid on, axis equal, hold on
view(30,20)

u = (-4*pi:0.1*pi:4*pi)'
v = (-4*pi:0.1*pi:4*pi)

x = 0.5*u.*cos(v)
y = 0.5*u.*sin(v)
z = u.*ones(size(v))

surf(x,y,z)
colormap("summer")

%% 3
figure("Name","task 3")
grid on, axis equal, hold on,  
view(30,20)

u = (-2*pi:0.1*pi:2*pi)'
v = (-2*pi:0.1*pi:2*pi)

x = cos(u).*cos(v)
y = 0.6*cos(u).*sin(v)
z = 0.8*sin(u).*ones(size(v))

mesh(x,y,z)
hidden off
colormap("summer")

%% 4
fign = figure("Name","task 4.1")
grid on, axis equal, hold on


t = 0:0.2:2

x = 0.5.*t
y = 0.8*t - (t.^2)/2

ux(1:length(x)) = 0.5
uy = 0.8*(1-t)

quiver(x,y,ux,uy,0)



figure("Name","task 4.2")
grid on, axis equal, hold on

quiver(x,y,ux,uy,1.5)



figure("Name","task 4.3")
grid on, axis equal, hold on

quiver(x,y,ux,uy,0.3)

%% 5
% надо запустить 4-ую секцию перед тестом 5-ой и не закрывать окно "task 4.1"
figure(fign)

%% 6
figure("Name","task 6")
grid on, axis equal, hold on

t = 0:0.2:2

x = 0.5.*t
y = 0.8*t - (t.^2)/2

ux(1:length(x)) = 0.5
uy = 0.8*(1-t)

compass(ux,uy)

%% 7
figure("Name","task 7")
grid on, axis equal, hold on

t = 0:0.2:2

x = 0.5.*t
y = 0.8*t - (t.^2)/2

ux(1:length(x)) = 0.5
uy = 0.8*(1-t)

feather(ux,uy)

%% 8
figure("Name","task 8")
grid on, axis equal, hold on
view(30,20)

u = (-pi:pi/15:pi)'
v = -pi:pi/15:pi

x = sin(u)*cos(v)
y = sin(u)*sin(v)
z = cos(u)*ones(size(v))

surf(x,y,z)

[U,V,W] = surfnorm(x,y,z)

hold on

quiver3(x,y,z,U,V,W,4,"k")

%% 9
figure("Name","task 9")
grid on, hold on
view(30,20)

[x,y] = meshgrid(-10:0.2:10)
a = 1
b = 1

z = x.^2/2*a^2 - y.^2/2*b^2

surf(x,y,z)

[u, v, w] = surfnorm(x, y, z);

quiver3(x, y, z, u, v, w, 0.5, 'k')

colormap("summer")

%% 10
figure("Name","task 10")
grid on, hold on
view(30,20)

a = 1;
b = 1;
c = 1;

[x, y] = meshgrid(-2 : 0.2 : 2);

z1 = sqrt((x.^2/a.^2 + y.^2/b.^2 + 1)*c^2);
z2 = -sqrt((x.^2 / a.^2 + y.^2 / b.^2 + 1) * c^2);

surf(x, y, z1)
surf(x, y, z2)

[u1, v1, w1] = surfnorm(x, y, z1);
quiver3(x, y, z1, u1, v1, w1, 4, 'k')

[u2, v2, w2] = surfnorm(x, y, z2);
quiver3(x, y, z2, u2, v2, w2, 4, 'k')

%% task 11
figure("Name","task 11")
grid on, hold on
view(20, 15)

u = (0:0.1:3)';
v = 0:0.1:3;

x = cos(u)*cos(v);
y = sin(u)*sin(v);
z = u*v;

surf(x,y,z)

[u,v,w] = surfnorm(x, y, z);
quiver3(x, y, z, u, v, w, 1, 'k') 

%% task 12
xL = 1
xR = 3

yL = -1
yR = 1

zL = 0
zR = 2

[X,Y,Z] = meshgrid(xL:0.05:xR, yL:0.05:yR, zL:0.05:zR)



u = X./sqrt(X.^2 + Y.^2 + Z.^2)
v = X./sqrt(X.^2 + Y.^2 + Z.^2)
w = X./sqrt(X.^2 + Y.^2 + Z.^2)



[Cx,Cy,Cz] = meshgrid(xL:(xR - xL)/3:xR,yL:(yR - yL)/3:yR,zL:(zR - zL)/7:zR)



figure("Name","task 12")

hC = coneplot(X,Y,Z,u,v,w,Cx,Cy,Cz,4)
set(hC,'facecolor','g','edgecolor','none')

axis tight
view(31,28)
light

xlabel('x')
ylabel('y')
zlabel('z')
