%HW6_JJ
%Problem 5b
increment = input('Enter increment value: ');
fv = input('Enter final value: ');
ft_lbf=(0:increment:fv);
Btu = (3412.14/737.56)*ft_lbf;
table=[ft_lbf;Btu];
disp('Conversion Table from ft*lbf/s to Btu/h');
disp('ft*lbf/s                  Btu/h');
disp('_______________________________');
fprintf('%3.0f\t\t\t%4.4f\n',table)