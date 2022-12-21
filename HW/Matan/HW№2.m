% MATLAB матан семинар 3 Поляков Максим
%% task 1
figure("Name","task 1")
grid on, axis equal, hold on

x = 0:0.001:5
y = exp(-x).*sin(10*x)

plot(x,y)

%% task 2
figure("Name","task 2")
grid on, axis equal, hold on
view(-58,-53)

x = 0:0.001:5
z = x
y = exp(-x).*sin(10*x)

area(x,y)
comet(x,y)

comet3(x,y,z,0.9)

%% task 3
figure("Name","task 3")
view(0,40)

x = [25, 10, 20, 35, 10]
y = [0,1,0,0,1]

pie3(x,y)

%% task 4
figure("Name","task 4")
grid on, axis equal, hold on

x = 0:0.01:1
xx = 0:1/99:1
y = exp(-x).*(sin(x) + 0.1*sin(100*pi*x))
yy = exp(-xx).*(sin(xx) + 0.1*sin(100*pi*xx))

plot(x,y,"r")
plot(xx,yy,"g")

%% task 5
figure("Name","task 5")

subplot(1,3,1)
x = 0:0.001:10
f = log(2*x)
g = log(x).*sin(2*x)
loglog(x,f)
hold on; grid on
loglog(x,g)
xlabel("x")
ylabel("y")
title("loglog")
legend("log(2*x)","log(x)*sin(2*x)",Location = "northwest")


subplot(1,3,2)
x = 0:0.001:10
f = log(2*x)
g = log(x).*sin(2*x)
semilogx(x,f)
hold on; grid on
semilogx(x,g)
xlabel("x")
ylabel("y")
title("semilogx")
legend("log(2*x)","log(x)*sin(2*x)",Location = "northwest")


subplot(1,3,3)
x = 0:0.001:10
f = log(2*x)
g = log(x).*sin(2*x)
semilogy(x,f)
hold on; grid on
semilogy(x,g)
xlabel("x")
ylabel("y")
title("semilogy")
legend("log(2*x)","log(x)*sin(2*x)",Location = "northwest")

%% task 6
figure("Name","task 6")
grid on, axis equal, hold on

t = -pi:0.01:pi
x = 2*sin(t)
y = 4*cos(t)

plot(x,y)

%% task 7
figure("Name","task 7")
grid on, hold on
view(120,30)

[x,y] = meshgrid(-3:0.05:3)

z = 4*sin(2*pi*x).*cos(1.5*pi*y).*(1 - x.^2).*y.*(1 - x)

mesh(x,y,z)
hidden off

%% task 8
figure("Name","task 8")

%сделано по условию
subplot(1,2,1)
grid on, hold on
view(120,15)

[x,y] = meshgrid(-3:0.05:3)
z = 4*sin(2*pi*x).*cos(1.5*pi*y).*(1 - x.^2).*y.*(1 - x)

contour3(x,y,z,-3:0.01:3)
colorbar



%сделано НЕ по условию
subplot(1,2,2)
grid on, hold on
view(120,15)

[x,y] = meshgrid(-3:0.05:3)
z = 4*sin(2*pi*x).*cos(1.5*pi*y).*(1 - x.^2).*y.*(1 - x)

contour3(x,y,z,-250:5:250)
colorbar

%% task 9
figure("Name","task 9")
grid on, hold on
view(120,30)

[x,y] = meshgrid(-3:0.05:3)

z = 4*sin(2*pi*x).*cos(1.5*pi*y).*(1 - x.^2).*y.*(1 - x)

surfl(x,y,z,[60,45])
colormap("spring")
hidden off

%% task 10
figure("Name","task 10")
colormap("summer")

[x,y] = meshgrid(-1:0.05:1)
z = ((sin(x)).^2 + (cos(y)).^2).^(x.*y)

subplot(2,2,1)
grid on, hold on
view(-40,30)

mesh(x,y,z)



subplot(2,2,2)
grid on, hold on
view(40,30)

surf(x,y,z)



subplot(2,2,3)
grid on, hold on
view(80,30)

contour3(x,y,z,0.5:0.02:1.5)



subplot(2,2,4)
grid on, hold on
view(120,30)

surfl(x,y,z,[60,45])
