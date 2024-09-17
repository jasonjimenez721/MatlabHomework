%
clear all
clear clc

m= [2 0 0; 0 1 0; 0 0 0.5];
K=[3 -1 0; -1 2 -1; 0 -1 1];

A=inv(m)*K
[V,D]=eig(A);
[D_sorted, ind] = sort(diag(D), 'ascend');
V_sorted = V(:,ind);

nat_freq_1 = sqrt(D_sorted(1))
nat_freq_2 = sqrt(D_sorted(2))
nat_freq_3 = sqrt(D_sorted(3))

mode_shape_1 = V_sorted(:,1)
mode_shape_2 = V_sorted(:,2)
mode_shape_3 = V_sorted(:,3)