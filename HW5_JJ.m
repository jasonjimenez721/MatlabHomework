%HW5_JJ
%Problem 1a
function output=energy(m) %function that calculates energy corresponding to masses
c=3*10.^8; %Speed of light; m/s
E=m*c.^2;
output=E;
%Problem 1b
m=logspace(0,6,10);
energy(m)

clear all
clear clc
disp('Press enter to see Problem 2c.')
pause

%Problem 2c
h=(0.5:0.1:1); %m
pressure(h); %pressure function
x=pressure(h);
Pa_to_atm(x) %conversion function

clear all
clear clc
disp('Press enter to see Problem 3b.')
pause

%Problem 3b
t=(0:0.5:30);
plot(t,height(t));
title('Rocket height vs Time');
xlabel('Time');
ylabel('Height');
grid on
%Problem 3c
t=(0:0.5:30);
h=height(t);
[hmax,index]=max(h);
tmax=t(index)

clear all
clear clc
disp('Press enter to see Problem 4b.')
pause

%Problem 4b
t=(0:60);
height_handle=@(t) height(t)
fplot(height_handle, [0,60])
title('height_handle vs Time')
xlabel('heigh_handle')
ylabel('Time')
grid on

%Problem 4c
fzero(height_handle,50)

clear all
clear clc
disp('Press enter to see Problem 5.')
pause

%Problem 5
polygon(8)