%% 1
a = 5*rand(7)
x = a(end,end-1)

%% 2
a = 10*rand(7)
x = a(5,4)

%% 3
a = [1 3 2 7;4 0 6 7;35 42 2 11]
b = [0 30 3 7;4 13 6 7;3 40 24 1;5 4 6 2]

a*b

%% 4
a = [7 2 1 5;3 -2 4 -3;2 1 1 1]
b = [5 4 3 0;2 3 -2 1;1 0 2 4]
 
x = (b-5*a)/3

%% 5
a = [3 2;1 4]

fa = a^2 - 3*a

%% 6
figure("Name", "task 6")

subplot(2,2,1)
grid on,  axis equal
line([-2;2],[-2;2])

subplot(2,2,2)
grid on,  axis equal
line([-2;2],[2;-2])

subplot(2,2,3)
grid on,  axis equal
line([-2;2],[-2;2])
line([-2;2],[2;-2])
line([0;0],[-4;5])

subplot(2,2,4)
grid on,  axis equal
line([0;0],[-4;5])

%% 7
figure("Name", "task 7")
grid on,  axis equal, view(25,40)
hold on

a = [5 4 5]
b = [1 2 3]
c = a + b 

quiver3(0,0,0,a(1),a(2),a(3),1,"Color", "b")
quiver3(a(1),a(2),a(3),b(1),b(2),b(3),1,"Color", "b")
quiver3(0,0,0,c(1),c(2),c(3),1,"Color", "r","LineWidth", 3)

text(a(1)/2,a(2)/2,a(3)/2,"\bfa")
text(a(1)+b(1)/2,a(2)+b(2)/2,a(3)+b(3)/2,"\bfb")
text(c(1)/2,c(2)/2,c(3)/2,"\bfa+b")

%% 8
c = [8 5 2]

Oax = acosd(c(1)/norm(c))
Oay = acosd(c(2)/norm(c))
Oaz = acosd(c(3)/norm(c))

orta = round((c(1)/norm(c))^2 + (c(2)/norm(c))^2 + (c(3)/norm(c))^2,3)
cheka4 = isequal(orta,1)

%% 9
a = [4,4,5]
b = [0,7,9]

A = 2
B = 3

check1 = isequal(A*(a+b),A*a+A*b)
check2 = isequal((A+B)*b,A*b+B*b)
check3 = isequal(A*(B*a),(A*B)*a)

%% 10
figure("Name", "task 10")
grid on,  axis equal, view(30,10)
hold on

c = [6 7 8] 

lenc1 = sqrt(c(1)^2 + c(2)^2 + c(3)^2)
lenc2 = norm(c)

check1 = isequal(lenc1,lenc2)



ortc = c/lenc2 

check2 = isequal(1,norm(ortc))



quiver3(0,0,0,c(1),c(2),c(3),1,"color", "g","linewidth", 1)
quiver3(0,0,0,ortc(1),ortc(2),ortc(3),1,"color", "r","linewidth",3)

