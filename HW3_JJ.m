%HW3_JJ
%Problem 1
B=0:10;
H=0:10;
A=(1/2).*B.*H
clear all
clear clc
disp('Press enter to see Problem 2.')
pause


%Problem 2
B=0:10;
H=8:12;
[Base,Height]=meshgrid(B,H);
A=(1/2).*Base.*Height
clear all
clear clc
disp('Press enter to see Problem 3.')
pause

%Problem 3
a=[15 3 22; 3 8 5; 14 3 82];
b=[1;5;6];
c=[12 18 5 2];
%a
d=a(:,3)
%b
e=[b,d]
%c
f=[b;d]
%d
g=[a;c(1:3)]
%e
h=[a(1,3) c(1,2) b(2,1)]
clear all
clear clc
disp('Press enter to see Problem 4.')
pause

%Problem 4
a0=[15 3 22; 3 8 5; 14 3 82];
a=zeros(size(a0))
b0=[1;5;6];
b=zeros(size(b0))
c0=[12 18 5 2];
c=zeros(size(c0))
clear all
clear clc
disp('Press enter to see Problem 5.')
pause

%Problem 5
TS=[88,85,68,45,92,55,59,78,77,77,79,86,87,64,94,99,43,67,71,70];
%a
max=max(TS)
%b
mean=mean(TS)
median=median(TS)
%c
HighestToLowest=sort(TS,'descend')
clear all
clear clc
disp('Press enter to see Problem 6.')
pause

%Problem 6
g=9.81; %m/s^2
m=[50,100,150,200,300,400,500,750,1000]; %kg
F=m*g;
F=round(F);
D=[5,10,15,25,50,100]; %m
[Force,Distance]=meshgrid(F,D');
W=Force.*Distance;
W=round(W)
