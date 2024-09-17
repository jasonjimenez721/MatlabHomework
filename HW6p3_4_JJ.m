%HW6_JJ
%Problem 3
x=(0:(pi/10):2*pi);
y=sin(x);
table=[x;y];
disp('x vs sin(x) Table');
disp('x         sin(x)');
disp('________________');
fprintf('%1.2f \t %1.2f\n',table)

clear all
clear clc
disp('Press enter to see Problem 4.')
pause

%Problem 4
t=(0:30);
h=(-(9.8/2).*t.^2)+(125.*t)+500;
plot(t,h);
title('Path of rocket')
xlabel('Time (s)');
ylabel('Height (m)')
[time,height]=ginput(1);
disp(['Max height:' num2str(height)]);
[time1,height1]=ginput(1);
disp(['Time when rocket hits ground:' num2str(time1)]);