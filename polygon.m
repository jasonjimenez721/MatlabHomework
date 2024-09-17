%polygon function
%Problem 5
function polygon(n)
angle=(2*pi)./n;
r= ones(1, n+1);
theta=0:angle:2*pi
polar(theta,r)