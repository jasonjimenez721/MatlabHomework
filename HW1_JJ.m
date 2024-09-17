%Problem 1
%A
r=5;
area= pi*r.^2
%B
r1=10;
SA=4*pi*r1.^2
%C
r2=2;
V=(4/3)*pi*r2.^3
%Problem 2
g=9.81; %m/s^2
v0=8; %m/s
t=[0:10:50]; %s
d=(v0*t)+(1/2*g*t.^2); %m
table=[t',d']
%Problem 3
G=6.673e-11; %Nm^2/kg^2
m1=6e24; %kg
m2=7.4e22; %kg
r3=3.9e8; %m
F=(G*m1*m2)/r3.^2
%Problem 4
format bank
G=6.673e-11; %Nm^2/kg^2
m1=6e24; %kg
m2=7.4e22; %kg
r4=linspace(3.8e8,4e8,10); %m
F1=(G*m1*m2)./(r4.^2); %N
table=[r4',F1']
%Problem 5
%A
ft=[0:10];
m=ft/3.28;
table=[ft',m']
%B
rad=[0:0.1*pi:pi];
deg=rad*(180/pi);
table=[rad;deg]'