format bank
V = [2.9,2.6,1.7,2.1,3,1.01,2.36]* 10^8; %m/s
C = [3,3.1,2.9]*10^8; %m/s
[new_V,new_C] = meshgrid(V,C);
gamma = 1./sqrt(1-(new_V.^2./new_C.^2))