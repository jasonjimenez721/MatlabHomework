%HW6_JJ
%Problem 5a
increment = input('Enter increment value between table entries: ');
kW=[0:increment:15];
HP = (737.56/550).*kW;
table=[kW;HP];
disp('Conversion Table from Kilowatt(kW) to Horsepower(HP)');
disp('kW                    HP');
disp('________________________');
fprintf('%3.0f\t\t%4.4f\n',table)