%HW6_JJ
%Problem 5c
iv = input('Enter initial value: ');
fv = input('Enter final value: ');
increment = input('Enter increment: ');
kW=(iv:increment:fv);
Btu = (3412.14).*kW;
HP = (737.56/550).*kW;
ft_lbf = (737.56).*kW;
table = [kW;Btu;HP;ft_lbf];
disp('Conversion table from kW to Btu/h,HP, & ft*lbf/s');
disp('kW            Btu/h           HP              ft*lbf/s');
disp('______________________________________________________');
fprintf('%4.2f\t\t%7.2f\t\t%4.2f\t\t%5.0f\n',table)