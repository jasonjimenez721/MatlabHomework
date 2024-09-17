%HW2_JJ
%Problem 1
n=52;
k=5;
%Order doesn't matter
unordered = nchoosek(n,k);
unordered % hands of 5
%Order does matter
ordered = unordered * factorial(k);
ordered % hands of 5
clear all
clear clc
disp('Press enter to see Problem 2.')
pause

%Problem 2
%a
%given
Q = 9000; % cal/mol
R = 1.987; % cal/mol*K
k0 = 1200; % min^-1
T = [150:50:550]; %K
%formula
K=k0*exp(-Q./(R*T));
Table1 = [T',K']
%b
%given
Q = 9000; % cal/mol
R = 1.987; % cal/mol*K
k0 = 1200; % min^-1
T = linspace(200,800,8);
%formula
K=k0*exp(-Q./(R*T));
Table2 = [T',K']
clear all
clear clc
disp('Press enter to see Problem 3.')
pause

%Problem 3
scores = [69,84,62,70,75,82,57,8,76,85,62,75,84,96,70,68,72,75,83,90];
mean = mean(scores)
median = median(scores)
mode = mode(scores)
std = std(scores)
clear all
clear clc
disp('Press enter to see Problem 4.')
pause

%Problem 4
A=15; %Maximum displacement, cm
w= 0.8; %Angular frequency, rad/s
t=[0:1:19]; %time, s
x=A*cos(w*t); %displacement, cm
v= x./t;
table=[x',v',t']
clear all
clear clc
disp('Press enter to see Problem 5')
pause

%Problem 5
v0=196; %m/s
g=9.81; %m/s^2
d=[0:1:90]; %degrees
r=(v0.^2./g)*sind(2.*d);
table=[d',r'];
round(table)
clear all
clear clc
disp('Press enter to see Problem 6')
pause

%Problem 6
%a
D1= rand(10,1);
x1= (6-1)* D1+1;
die1 = round(x1)
D2= rand(10,1);
x2= (6-1)* D2+1; %Eq is x= (b-a)*r+a, and and b are upper and lower bounds, r is the array of random numbers
die2 = round(x2)
%b
die1+die2