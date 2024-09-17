%HW7_JJ
%Problem 1
t = [0:2:100];
H = 2.13*t.^2-0.0013*t.^4+0.000034*t.^4.751;
plot(t,H);
title('Rocket Path')
xlabel('Time (sec)')
ylabel('Height (m)')
l = length(H);
index = find(H<0);
time = t(index(1));
fprintf('Time at which ground is reached = %f seconds', time)

clear all
clear clc
disp('Press enter to see Problem 2.')
pause

%Problem 2
x = [-2*pi:pi/10:2*pi];
x1 = find(x<-pi);
g(x1)=-1;
x2 = find(x>=-pi & x<=pi);
g(x2)=cos(x2);
x3 = find(x>pi);
g(x3)=-1;
plot(x,g);
title('Function g(x)');
xlabel('x');
ylabel('g(x)');

clear all
clear clc
disp('Press enter to see Problem 3.')
pause

%Problem 3
x = input('Enter value of x. ');
y = input('Enter value of y. ');
if (x>y)
    disp('x is greater than  y (x>y)')
else if (y>=x)
        disp('y is greater than or equal to x (y>=x)')
end
end

clear all
clear clc
disp('Press enter to see Problem 4a.')
pause

%Problem 4
%Problem 4a
saws = [1,4,5,3,7,5,3,10,12,8,7,4]
if (saws>=0)
    disp('All valid')
else
    disp('Invalid number found')
end

clear all
clear clc
disp('Press enter to see Problem 4b.')
pause

%Problem 4b
saws = [-1,4,5,3,7,5,3,10,12,8,7,4]
if (saws>=0)
    disp('All valid')
else
    disp('Invalid number found')
end

clear all
clear clc
disp('Press enter to see Problem 5a.')
pause

%Problem 5
%Problem 5a
x=('Enter a geometric shape: triangle, square, pentagon, hexagon. ');
figure = input(x, 's');
switch figure
    case 'triangle'
        n=3
        disp('Sum of interior angles')
        sum = (n-2)*180
    case 'square'
        n=4
        disp('Sum of interior angles')
        sum = (n-2)*180
    case 'pentagon'
        n=5
        disp('Sum of interior angles')
        sum = (n-2)*180
    case 'hexagon'
        n=6
        disp('Sum of interior angles')
        sum = (n-2)*180
    otherwise
        disp('Invalid input')
end

clear all
clear clc
disp('Press enter to see Problem 5b.')
pause

%Problem 5b
figure = menu('Choose a geometric figure', 'triangle', 'square', 'pentagon', 'hexagon');
switch figure
    case 1
        name = 'triangle'
    case 2
        name = 'square'
    case 3
        name = 'pentagon'
    case 4
        name = 'hexagon'
    otherwise
end
n = figure+2 % # of sides
sum = (n-2)*180 % degrees
