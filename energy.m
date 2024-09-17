%energy function
%Problem 1a
function output=energy(m) %function that calculates energy corresponding to masses
c=3*10.^8; %Speed of light; m/s
E=m*c.^2;
output=E;