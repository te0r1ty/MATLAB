% MATLAB алгебра семинар 3 Поляков Максим
%% task 1
figure("Name", "task 1")
grid on,  axis equal

line([0;2],[0;1])
line([0;-1],[0;2])
line([-2;0],[-4;0])
%% task 2
figure("Name", "task 2")
grid on,  axis equal

line([0 0 0;2 2 3],[0 2 2;1 0 0])
%% task 3
figure("Name", "task 3")
grid on,  axis equal

subplot(2,2,1)
line([0;2],[0;1])

subplot(2,2,2)
line([0;2],[2;0])

subplot(2,2,3)
line([0 0 0;2 2 3],[0 2 2;1 0 0])

subplot(2,2,4)
line([0;3],[2;0])
%% task 4
figure("Name", "task 4")
grid on,  axis equal
hold on

quiver(0, 0, 2, 1, 1, "color", "black", "linewidth", 3)
quiver(0, 2, 2, -2, 1, "color", "black", "linewidth", 3)
quiver(0, 2, 3, -2, 1, "color", "black", "linewidth", 3)

hold off
%% task 5
figure("Name", "task 5")
view(120,30)
grid on,  axis equal
hold on

quiver3(0, 0, 0, 1, 0, 0, 1, "color", "black", "linewidth", 3)
quiver3(0, 0, 0, 0, 1, 0, 1, "color", "black", "linewidth", 3)
quiver3(0, 0, 0, 0, 0, 1, 1, "color", "black", "linewidth", 3)

hold off
%% task 6
figure("Name", "task 6")
grid on,  axis equal
hold on

quiver(0, 0, 0, 3, 1, "linewidth", 3)
quiver(0, 0, 3, 0, 1, "linewidth", 3)
quiver(0, 0, 0, 1, 1, "color", "black", "linewidth", 4)
quiver(0, 0, 1, 0, 1, "color", "black", "linewidth", 4)

hold off
%% task 7
figure("Name", "task 7")
view(120,30)
grid on,  axis equal
hold on

quiver3(0, 0, 0, 3, 0, 0, 1, "linewidth", 2)
quiver3(0, 0, 0, 0, 3, 0, 1, "linewidth", 2)
quiver3(0, 0, 0, 0, 0, 3, 1, "linewidth", 2)

quiver3(0, 0, 0, 1, 0, 0, 1, "color", "black", "linewidth", 4)
quiver3(0, 0, 0, 0, 1, 0, 1, "color", "black", "linewidth", 4)
quiver3(0, 0, 0, 0, 0, 1, 1, "color", "black", "linewidth", 4)

hold off
%% task 8
figure("Name", "task 8")
grid on,  axis equal
hold on

line([-1;2],[3;-5])
line([1,4;2,3],[-1,0;-3,-5])

text(-1,3,'(-1, 3)')
text(1,-1,'(1, -1)')
text(4,0,'(4, 0)')

text(2,-5,'(2, -5)')
text(2,-3,'(2, -3)')
text(3,-5,'(3, -5)')

axis([-2 5 -6 4])

hold off
%% task 9
figure("Name", "task 9")
grid on,  axis equal
hold on

A = [-2 0]
B = [1 2]
C = [1 -1]

AB = B-A
BC = C-B
AC = C-A

% выводит единичку - значит правильно!
chek9 = isequal(AC,AB+BC)

quiver(A(1), A(2), B(1)-A(1), B(2)-A(2), 1, "color", "blue")
quiver(B(1), B(2), C(1)-B(1), C(2)-B(2), 1, "color", "blue")
quiver(A(1), A(2), C(1)-A(1), C(2)-A(2), 1, "color", "red")

plot(A(1),A(2),"o","color", "yellow", "linewidth",8)
plot(B(1),B(2),"o","color", "yellow", "linewidth",8)
plot(C(1),C(2),"o","color", "yellow", "linewidth",8)

text(A(1),A(2),"A")
text(B(1),B(2),"B")
text(C(1),C(2),"C")

hold off
%% task 10
figure("Name", "task 10")

A = [-2 0]
B = [1 2]
C = [1 -1]
D = C - (B - A)

AB = B-A
DC = C-D
AD = D-A
BC = C-B

subplot(1,2,1)
grid on,  axis equal
hold on
line([A(1);B(1)],[A(2);B(2)])
line([B(1);C(1)],[B(2);C(2)])
line([C(1);D(1)],[C(2);D(2)])
line([D(1);A(1)],[D(2);A(2)])

plot(A(1),A(2),"o","color", "yellow", "linewidth",8)
plot(B(1),B(2),"o","color", "yellow", "linewidth",8)
plot(C(1),C(2),"o","color", "yellow", "linewidth",8)
plot(D(1),D(2),"o","color", "yellow", "linewidth",8)

text(A(1),A(2),"A")
text(B(1),B(2),"B")
text(C(1),C(2),"C")
text(D(1),D(2),"D")

% выводит единичку - значит коллинеарны!
chekABDC1 = isequal(AB(1)/DC(1),AB(2)/DC(2))
% выводит единичку - значит сонаправленны!
chekABDC2 = AB(1)/DC(1)>0
% выводит единичку - значит равны!
chekABDC3 = isequal(AB,DC)

% выводит единичку - значит коллинеарны!
chekADBC1 = isequal(AD(1)*BC(2),AD(2)*BC(1))
% выводит единичку - значит сонаправленны!
chekADBC2 = AD(2)/BC(2)>0
% выводит единичку - значит равны!
chekADBC3 = isequal(AD,BC)



subplot(1,2,2)
grid on,  axis equal
hold on

quiver(A(1), A(2), B(1)-A(1), B(2)-A(2), 1, "color", "blue")
quiver(A(1), A(2), D(1)-A(1), D(2)-A(2), 1, "color", "blue")
quiver(B(1), B(2), C(1)-B(1), C(2)-B(2), 1,"--", "color", "black")
quiver(D(1), D(2), C(1)-D(1), C(2)-D(2), 1,"--", "color", "black")

quiver(A(1), A(2), C(1)-A(1), C(2)-A(2), 1, "color", "red")

plot(A(1),A(2),"o","color", "yellow", "linewidth",8)
plot(B(1),B(2),"o","color", "yellow", "linewidth",8)
plot(C(1),C(2),"o","color", "yellow", "linewidth",8)
plot(D(1),D(2),"o","color", "yellow", "linewidth",8)

text(A(1),A(2),"A")
text(B(1),B(2),"B")
text(C(1),C(2),"C")
text(D(1),D(2),"D")

hold off
%% task 11
figure("Name", "task 11")

a1 = [2 4 6]
b1 = [3 5 2]
a2 = [7 6 5]
b2 = [3 5 2]

sum = a1 + b1
dif = a2 - b2

subplot(1,2,1)
grid on,  axis equal
hold on
view(80,30)

quiver3(0, 0, 0, a1(1), a1(2), a1(3), 1, "color", "blue")
quiver3(0, 0, 0, b1(1), b1(2), b1(3), 1, "color", "blue")
quiver3(a1(1), a1(2), a1(3), b1(1), b1(2), b1(3), 1, "--", "color", "green")
quiver3(b1(1), b1(2), b1(3), a1(1), a1(2), a1(3), 1, "--", "color", "green")
quiver3(0, 0, 0, sum(1), sum(2), sum(3), 1, "color", "red")

text(1,2,3,'\bfa1')
text(1.5,2.5,1,'\bfb1')

text(1+b1(1),2+b1(2),3+b1(3),'\bfa1')
text(1.5+a1(1),2.5+a1(2),1+a1(3),'\bfb1')

text(sum(1)/2,sum(2)/2,sum(3)/2,'\bfa1+b1')

hold off



subplot(1,2,2)
grid on,  axis equal
hold on
view(-45,10)

quiver3(0, 0, 0, a2(1), a2(2), a2(3), 1, "color", "blue")
quiver3(0, 0, 0, b2(1), b2(2), b2(3), 1, "color", "blue")
quiver3(a2(1), a2(2), a2(3), -b2(1), -b2(2), -b2(3), 1, "--", "color", "green")
quiver3(0, 0, 0, dif(1), dif(2), dif(3), 1, "color", "red")

text(3.5,3,2.5,"\bfa2")
text(1.5,2.5,1,'\bfb2')

text(a2(1)-1.5,a2(2)-2.5,a2(3)-1,"\bf-b2")

text(dif(1)/2,dif(2)/2,dif(3)/2,'\bfa1+b1')

hold off
