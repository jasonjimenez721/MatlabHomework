%Quiz 1
%Problem 1
T=300; %k
n=3; %mol
R=0.084; %L*bar/K*mol
V=[1,5,10,100]; %L
%PV=nRT
P=(n*R*T)./V
clear all
clear clc
disp('Press enter to see Problem 2.')
pause

%Problem 2
C_L=[0.28,0.31,0.46,0.75,0.88,0.98];
p=[0.00023,0.00089,0.0015,0.0049,0.0093]; %slugs/ft^3
V=152; %ft/s
X_CR=2.2; %ft
mu=7.99e-6;
R_e=(X_CR*p*V)./mu;
[C_L2,R_e2]=meshgrid(C_L,R_e);
C_D=C_L2.^1.8./sqrt(R_e2)
disp('Press enter to see Problem 3.')
pause

%Problem 3
C_D_min=min(min(C_D))
C_D_max=max(max(C_D))