%HW9_JJ
%Problem 1
Q = [2, 1, 1, 4]; %(intake, intercooler, exhaust tips, pistons)
C = [60, 99, 56, 49];
dot(Q,C)

clear all
clear clc
disp('Press enter to see Problem 2a.')
pause

%Problem 2
A = [2, -1; 4, 5];
B = [4, 2; 2, 1];
C = [2, 0, 0; 1, 2, 2; 5, -4, 0];

%Problem 2a
A*B
B*A

disp('Press enter to see Problem 2b.')
pause

%Problem 2b
det(A)
det(B)
det(C)

disp('Press enter to see Problem 2c.')
pause

%Problem 2c
inv(A)
inv(B)
inv(C)

clear all
clear clc
disp('Press enter to see Problem 3.')
pause

%Problem 3
d = [-10, 5, 0]; %(i, j, k) inches
F = 35; %lbf
F_vec = F*[-sind(55), -cosd(55), 0]/12; %lbf (need it in feet so divide by 12)
M = cross(d, F_vec)

clear all
clear clc
disp('Press enter to see Problem 4.')
pause

%Problem 4
A = [3, 1, 3, 1, 1;
    5, 1, 1, -3, 7;
    -1, 4, 2, 2, -3;
    1, 1, 1, 1, 1;
    -7, -1, 1, 1, -1];
B = [27;
    17;
    16;
    1;
    -7];
v_w_x_y_z = inv(A)*B

clear all
clear clc
disp('Press enter to see Problem 5.')
pause

%Problem 5
A = [3,4,2,-1,1,7,1; 2,-2,3,-4,5,2,8; 1,2,3,1,2,4,6;
    5,10,4,3,9,-2,1; 3,2,-2,-4,-5,-6,7; -2,9,1,3,-3,5,1; 1,-2,-8,4,2,4,5];
B = [42;32;12;-5;10;18;17];
%Using matrix left division
tic
x1 = A\B
toc

%Using Inverse method
tic
x2 = inv(A)*B
toc