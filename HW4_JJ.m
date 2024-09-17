%HW4_JJ
%Problem 1
%a
x=[0:pi/100:20*pi];
y=x.*sin(x);
z=x.*cos(x);
figure(1)
plot(x,y);
title('x-y plot');
xlabel('x');
ylabel('y');

%b
figure(2)
polarplot(x,y);
title('x-y polarplot');

%c
figure(3)
plot3(x,y,z);
title('3-D plot x,y,z');x=[0:pi/100:20*pi];
y=x.*sin(x);
z=x.*cos(x);
xlabel('x');
ylabel('y');
zlabel('z');

clear all
clear clc
disp('Press enter to see Problem 2.')
pause



%Problem 2
Load= [0,1500,3000,4500,5000,6500,8000,8600,9500,10000]; % lb*f
Length= [2,2.002,2.005,2.006,2.008,2.01,2.02,2.04,2.1,2.15]; % in.
%a
d=0.5; % in. (diameter)
A=(pi*d.^2)./4; %in.^2 (area)
stress= Load./A;
strain= (Length-2)./2;
figure(4)
plot(stress,strain,'-ok')
title('stress vs strain (rod)')
xlabel('stress')
ylabel('strain')

%b
text(41740,0.01,'yield point')

clear all
clear clc
disp('Press enter to see Problem 3.')
pause

%Problem 3
x=linspace(-pi,pi,100);
y1=sin(x);
y2=sin(2.*x);
y3=sin(3.*x);
figure(5)
plot(x,y1,'--r')
hold on
plot(x,y2,'-b')
plot(x,y3,':g')
hold off
title('x vs sin(#x)')
xlabel('x')
ylabel('y=sin(#x)')

clear all
clear clc
disp('Press enter to see Problem 4.')
pause

%Problem 4
x=[0:pi/100:20*pi];
y=x.*sin(x);
z=x.*cos(x);
figure(6)
comet3(z,y,x)
title('tornado plot of Problem 1');
xlabel('z');
ylabel('y');
zlabel('x');

clear all
clear clc
disp('Press enter to see Problem 5.')
pause

%Problem 5
%P = current balance
%P_0= initial balance
%r=growth constant, expressed as a decimal fraction
% t= time invested
P_0=1000 ;%dollars
r=0.08;
t=[0:30];
P=P_0*exp(r*t);
table=[t;P]';
round(table)

%a
figure(7)
subplot(2,2,1)
plot(t,P)
xlabel('time')
ylabel('current balance (P)')

%b
subplot(2,2,2)
semilogx(t,P)
xlabel('time')
ylabel('current balance (P)')

%c
subplot(2,2,3)
semilogy(t,P)
xlabel('time')
ylabel('current balance (P)')

%d
subplot(2,2,4)
loglog(t,P)
xlabel('time')
ylabel('current balance (P)')