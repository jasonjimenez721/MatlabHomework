%Quiz3_JJ
%Problem 1
disp("Enter schedule for the week");
weekdays=["Sunday" "Monday" "Tuesday" "Wednesday" "Friday" "Saturday"];
starttime=["OFF" "OFF" "OFF" "OFF" "OFF" "OFF" "OFF"];
endtime=["OFF" "OFF" "OFF" "OFF" "OFF" "OFF" "OFF"];
for i= 1:length(weekdays)
j=i;
disp("Enter 1 if you work on "+weekdays(j)+" and so on or enter 0");
x=input(' ');
if(x==1)
starttime(j)=input('Enter start time','s');
endtime(j)=input('Enter end time','s');
end
end
disp("Days Start End");
for i=1:length(weekdays)
j=i;
disp(weekdays(j)+" "+starttime(j)+" "+endtime(j))
end



clear all
clear clc
disp('Press enter to see Problem 2.')
pause

%Problem 2
A = [3, 1, 3, 1, 1;
    5, 1, 1, -3, 7;
    -1, 4, 2, 2, -3;
    1, 1, 1, 1, 1;
    -7, -1, 1, 1, -1];
B = [27;
    17;
    16;
    1;
    -7];
%inverse method
v_w_x_y_z = inv(A)*B

%time for inverse method
tic
v_w_x_y_z = inv(A)*B
toc

%left divison method
C = A\B

%time for left division method
tic
C = A\B
toc

clear all
clear clc
disp('Press enter to see Problem 3.')
pause



x=[];
fprintf('First enter two numbers x(1) and x(2)\n');

x(1) =input('');

x(2) = input('');

fprintf('Now enter as many numbers as you''d like, enter -1 to kill program.\n');

i=2;
while ~(x(i)==-1)
    i=i+1;
    x(i) = input('');
end
len=length(x);

for i=1:len
    for j=1:len-i
        if x(j)>x(j+1)
            dup=x(j);
            x(j)=x(j+1);
            x(j+1)=dup;
        end
    end
end

fprintf('The largest number is: %d\n',x(end));
fprintf('The second largest number is: %d\n',x(end-1));