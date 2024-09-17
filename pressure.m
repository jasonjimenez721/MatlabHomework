%pressure function
%Problem 2a
function output=pressure(h)
r= 13560; %density of barometer fluid; kg/m^3
g=9.8; %gravity; m/s^2
P=r*g*h;
output=P;