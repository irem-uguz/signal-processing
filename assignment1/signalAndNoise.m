%Problem 1
figure;
x = -100:100;
subplot(4,2,1);
y1= sin(x);
plot(x,y1);

subplot(4,2,2);
y2= sin(50*x);
plot(x,y2);

subplot(4,2,3);
y3= 50*sin(x);
plot(x,y3);

subplot(4,2,4);
y4= sin(x)+50;
plot(x,y4);

subplot(4,2,5);
y5= sin(x+50);
plot(x,y5);

subplot(4,2,6);
y6= 50.*sin(50*x);
plot(x,y6);

subplot(4,2,7);
y7= x.*sin(x);
plot(x,y7);

subplot(4,2,8);
y8= sin(x)./x;
plot(x,y8);

%Problem 2
figure;
x = -20:20;

subplot(5,2,1);
y1= sin(x);
plot(x,y1);

subplot(5,2,2);
y2= sin(50*x);
plot(x,y2);

subplot(5,2,3);
y3= 50*sin(x);
plot(x,y3);

subplot(5,2,4);
y4= sin(x)+50;
plot(x,y4);

subplot(5,2,5);
y5= sin(x+50);
plot(x,y5);

subplot(5,2,6);
y6= 50.*sin(50*x);
plot(x,y6);

subplot(5,2,7);
y7= x.*sin(x);
plot(x,y7);

subplot(5,2,8);
y8= sin(x)./x;
plot(x,y8);

subplot(5,2,9);
y9= y1+y2+y3+y4+y5+y6+y7+y8;
plot(x,y9);

%Problem 3
figure;
z=randn(41,1);

subplot(5,2,1);
y10= z;
plot3(x,y10,z);

subplot(5,2,2);
y11= x+z;
plot3(x,y11,z);

subplot(5,2,3);
y12= z*sin(x);
plot3(x,y12,z);

subplot(5,2,4);
y13= z.*sin(x);
plot3(x,y13,z);

subplot(5,2,5);
y14= x.*sin(z);
plot3(x,y14,z);

subplot(5,2,6);
y15= sin(x+z);
plot3(x,y15,z);

subplot(5,2,7);
y16= z.*sin(50*x);
plot3(x,y16,z);

subplot(5,2,8);
y17= sin(x+50*z);
plot3(x,y17,z);

subplot(5,2,9);
y18= sin(x)./z;
plot3(x,y18,z);

subplot(5,2,10);
y19= y11+y12+y13+y14+y15+y16+y17+y18;
plot3(x,y19,z);

%Problem 4
figure;
z=rand(41,1);

subplot(5,2,1);
y20= z;
plot3(x,y20,z);

subplot(5,2,2);
y21= x+z;
plot3(x,y21,z);

subplot(5,2,3);
y22= z*sin(x);
plot3(x,y22,z);

subplot(5,2,4);
y23= z.*sin(x);
plot3(x,y23,z);

subplot(5,2,5);
y24= x.*sin(z);
plot3(x,y24,z);

subplot(5,2,6);
y25= sin(x+z);
plot3(x,y25,z);

subplot(5,2,7);
y26= z.*sin(50*x);
plot3(x,y26,z);

subplot(5,2,8);
y27= sin(x+50*z);
plot3(x,y27,z);

subplot(5,2,9);
y28= sin(x)./z;
plot3(x,y28,z);

subplot(5,2,10);
y29= y21+y22+y23+y24+y25+y26+y27+y28;
plot3(x,y29,z);

%Problem 5
figure;
r1 = 1.*randn(10000,1) + 0;
r2 = 2.*randn(10000,1) + 0;
r3 = 4.*randn(10000,1) + 0;
r4 = 16.*randn(10000,1) + 0;
subplot(2,2,1);
hist(r1);
subplot(2,2,2);
hist(r2);
subplot(2,2,3);
hist(r3);
subplot(2,2,4);
hist(r4);

%Problem 6
figure;
r6 = 1.*randn(10000,1) + 10;
r7 = 2.*randn(10000,1) + 20;
r8 = 1.*randn(10000,1) - 10;
r9 = 2.*randn(10000,1) - 20;
subplot(2,2,1);
hist(r6);
subplot(2,2,2);
hist(r7);
subplot(2,2,3);
hist(r8);
subplot(2,2,4);
hist(r9);

%Problem 7
figure;
r11 = 1.*((rand(10000,1)-0.5).*sqrt(12)) + 0;
r21 = 2.*((rand(10000,1)-0.5).*sqrt(12)) + 0;
r31 = 4.*((rand(10000,1)-0.5).*sqrt(12)) +0 ;
r41 = 16.*((rand(10000,1)-0.5).*sqrt(12)) + 0;
var(r11);
subplot(2,2,1);
hist(r11);
subplot(2,2,2);
hist(r21);
subplot(2,2,3);
hist(r31);
subplot(2,2,4);
hist(r41);

%Problem 8
figure;
r61 = 1.*((rand(10000,1)-0.5).*sqrt(12)) + 10;
r71 = 2.*((rand(10000,1)-0.5).*sqrt(12)) + 20;
r81 = 1.*((rand(10000,1)-0.5).*sqrt(12)) - 10;
r91 = 2.*((rand(10000,1)-0.5).*sqrt(12)) - 20;
subplot(2,2,1);
hist(r61);
subplot(2,2,2);
hist(r71);
subplot(2,2,3);
hist(r81);
subplot(2,2,4);
hist(r91);
