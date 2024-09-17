%Quiz2_JJ
%Problem 1
US_Dollars = input('Enter US Dollar amount.')
Yen = US_Dollars*125.33;
Euro = US_Dollars*0.92;
Mexican_Pesos = US_Dollars*19.92;
Canadian_Dollars = US_Dollars*1.26;
disp('Conversion table of US Dollars in different foreign currencies')
disp('US Dollars    Yen         Euro    Pesos Canadian Dollars')
fprintf(' %0.2f\t    %0.2f\t %0.2f\t  %0.2f\t  %0.2f\n',[US_Dollars;Yen;Euro;Mexican_Pesos;Canadian_Dollars]);

clear all
clear clc
disp('Press enter to see Problem 2.')
pause

%Problem 2
a = [-10:1:10];
b = [-10:1:10];
[X,Y] = meshgrid(a,b);
Z = sin(sqrt(X.^2 + Y.^2));
surf(X,Y,Z);

clear all
clear clc
disp('Press enter to see Problem 3.')
pause

%Problem 3
t=input('Enter the interval for which the plane was in flight.');
x1=func1(t);
y1=func2(x1,t);
z1=func3(y1,t);
disp('x   y           z')
fprintf('%d %d %d\n',x1,y1,z1)
function x=func1(t)
x=t.^2+t;
end
function y=func2(x,t)
y=x.^2+sqrt(t);
end
function z=func3(y,t)
z=y+t.^1.5;
end