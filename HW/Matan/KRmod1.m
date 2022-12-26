%% task 1
A = rand(6)
x = A(5,4)

%% task 2
for i = 1:5
  a = randi(10);
  disp(a)
end

%% task 3
syms a x n

y = exp(-a*x^5) + log(a^n + x^a) - a*n/x^3

d = diff(y,x,1)

%% task 4
options = optimset('Display','iter'); 

x0 = [1,1,0]

[x,fval,exitflag,output] = fsolve(@firstI,x0,options);

%% task 5
syms x

f = 1 - (exp(-x))/x

lim = limit(f,x,Inf)

%% task 6
figure("Name","task 6")
grid on, hold on
view(30,40)

[x,y] = meshgrid(-4:0.06:4)
z = 4 .* sin(2.*pi.*x) .* cos(2.*pi.*y) .* (1 - y.^2) .* y .* (1 - x)

surfl(x,y,z,[-90,45])
colormap("summer")

%% task 7
x = 0.01:0.2:2*pi
y1 = (sin(x))./x
y2 = (exp(-x)).*cos(x)

figure("Name","task 7.1")
grid on, hold on, axis equal

plot(x,y1)

xlabel("x")
ylabel("y")
title("1st plot")
legend("sin(x)/x",Location = "northwest")



figure("Name","task 7.2")
grid on, hold on, axis equal

plot(x,y2)

xlabel("x")
ylabel("y")
title("2nd plot")
legend("e^(^-^x^)*cos(x)",Location = "northwest")



figure("Name","task 7.3")
grid on, hold on, axis equal

plot(x,y1)
plot(x,y2)

xlabel("x")
ylabel("y")
title("3rd plot")
legend("sin(x)/x","e^(^-^x^)*cos(x)",Location = "northwest")



figure("Name","task 7.4")


subplot(1,2,1)
grid on, hold on, axis equal

plot(x,y1)

xlabel("x")
ylabel("y")
title("4.1st plot")
legend("sin(x)/x",Location = "northwest")

subplot(1,2,2)
grid on, hold on, axis equal

plot(x,y2)

xlabel("x")
ylabel("y")
title("4.2nd plot")
legend("e^(^-^x^)*cos(x)",Location = "northwest")

%% task 8
figure("Name","task 8")
grid on, hold on
view(30,40)

a = 1;
b = 1;
c = 1;

[x, y] = meshgrid(-2 : 0.1 : 2);

z = sqrt((x.^2/a.^2 + y.^2/b.^2 + 1)*c^2);

surf(x, y, z)

[u,v,w] = surfnorm(x, y, z);
quiver3(x, y, z, u, v, w, 1, 'k') 

%% task 9
figure("Name","task 9")
grid on, hold on
view(30,40)

t = 0:0.01:100
x = (t/(1-t))*sin(t)
y = (t/(1+t))*cos(t)
z = t

plot3(x,y,z)

%% task 10
figure("Name","task 10")
grid on, hold on
view(30,40)

v = -4*pi:0.1*pi:4
u = v'

x = 2*u*cos(v)
y = 3*u*sin(v)
z = u*ones(size(v))

surf(x,y,z)


%% functions
function F = firstI(x)
F(1) = x(1)^2 - 2*x(2)^2 + x(3) + 1;
F(2) = -3*x(1)^2 + x(2)^2 + x(3) + 2;
end
