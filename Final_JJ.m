%Final_JJ
%Problem 1
r = 13; %meters
h = 22; %meters
V = (pi*r.^2*h)./3

clear all
clear clc
disp('Press enter to see Problem 2.')
pause

%Problem 2
format bank
V = [2.9,2.6,1.7,2.1,3,1.01,2.36]* 10^8; %m/s
C = [3,3.1,2.9]*10^8; %m/s
[new_V,new_C] = meshgrid(V,C);
gamma = 1./sqrt(1-(new_V.^2./new_C.^2))

clear all
clear clc
disp('Press enter to see Problem 3.')
pause

%Problem 3
B = [0, 1, 2, 3, 4; 5, 0, 6, 8, 9; 2, 3, 0, 9, 2; 6, 8, 4, 0, 7];
mean = mean(B)
median = median(B)
mode = mode(B)
Z = sort(B,2, 'descend')

clear all
clear clc
disp('Press enter to see Problem 4.')
pause

%Problem 4
X = [0:1:50; 50:1:100];    
Y = X.^10;
Z = X.*(Y.^2);

subplot(2,2,1);
mesh(X,Y,Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Mesh Plot');

subplot(2,2,2);
surf(X,Y,Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Surface Plot');

subplot(2,2,3);
plot3(X,Y,Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('3-Dimentional Plot');

subplot(2,2,4);
surfc(X,Y,Z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Surface-Contour Plot');

grid on;

clear all
clear clc
disp('Press enter to see Problem 5.')
pause

%Problem 5
I = 9;
FV = 10.3; 
PV = 1.5; 
periods = @(fv,pv,i)(log(fv/pv)/log(1+i));
years = periods(FV,PV,I);
disp('years =')
disp(years)

clear all
clear clc
disp('Press enter to see Problem 6.')
pause

%Problem 6
m = input('Enter odd number only: ');
q = (m-1)/2;
ma = m + 11;
j = 0;
if(mod(m,2)==1)
    p = m;
    temp = linspace(0, 2*pi, p+1);
    [x, y] = pol2cart(temp, 1);
    K = diag(ones(q,1), p-q)+diag(ones(p-q,1), q)+ ...
           diag(ones(q,1), -p+q)+ ...
              diag(ones(p-q,1), -q);
    j = j + 1;
    subplot(3, 4, j)
    gplot(K, [x' y'], 'r')
    set(gca,'XColor', 'none','YColor','none')
    title('Star')
else
    disp('END');
end

%This plot appears on the same tab that the subplots for problem 4 are on.

clear all
clear clc
disp('Press enter to see Problem 7.')
pause

%Problem 7
warning('off');
n = input("Enter number of square sides: "); 
spaces = n - 2; % We have 1 star on both sides so, the spaces will be n - 2.
for row = 1:n
    if row == 1 | row == n % If the row is either first or last
        for col = 1:n % Print all stars
            fprintf("*");
        end
    else % If the row is neither first nor last
        fprintf("*"); % Print first star
        for space = 1:spaces
            fprintf(" ");
        end
        fprintf("*"); % Print last star
    end
    fprintf("\n"); % Newline
end

clear all
clear clc
disp('Press enter to see Problem 8.')
pause

%Problem 8
a = [];
size = 0;
while 1
    n = input('Enter a number / -1 to stop : ');
    if n == -1
        break
    end
    % extending array with number
    a = [a n];
    % incrementing size
    size = size + 1;
end
% initializing minimum, maximum 
% to first element, sum to 0
min = a(1);
max = a(1);
sum = 0;
% finding minimum, maximum & sum 
for i = 1:size
    if min > a(i)
        min = a(i);
    end
    if max < a(i)
        max = a(i);
    end
    sum = sum + a(i);
end
% calculating average
avg = sum/size;
% printing report
fprintf('Minimum = %d \n', min);
fprintf('Maximum = %d \n', max);
fprintf('Average = %f \n', avg);

clear all
clear clc
disp('Press enter to see Problem 9.')
pause

%Problem 9
a = [];
size = 0;
while 1
    n = input('Enter a number / -1 to stop : ');
    if n == -1
        break
    end
    % extending array with number
    a = [a n];
    % incrementing size
    size = size + 1;
end
for i=1:length(a)
for j=1:length(a)
if(a(i)<a(j))
c=a(i);
a(i)=a(j);
a(j)=c;
end
end
end
disp(a)