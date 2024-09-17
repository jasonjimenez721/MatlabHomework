%HW8_JJ
%Problem 1
%Problem 1a
X = [1,23,43,72,87,56,98,33];
sum = 0;
for index = 1:length(X);
    sum=sum+X(index);
end
disp('sum')
disp(sum)

clear all
clear clc
disp('Press enter to see Problem 1b.')
pause

%Problem 1b
X = [1,23,43,72,87,56,98,33];
sum = 0;
i = 1;
while(i<=length(X))
    sum=sum+X(i);
    i = i+1;
end
disp('sum')
disp(sum)

clear all
clear clc
disp('Press enter to see Problem 2.')
pause

%Problem 2
n=input('Enter "100" : ');
x=primes(n);
L=length(x);
Product=zeros(1,L-1);

for i=1:L-1 
Product(i)=x(i)*x(i+1);
end
disp('Product')
disp(Product)

clear all
clear clc
disp('Press enter to see Problem 3.')
pause

%Problem 3
%sequence= 1,1,2,3,5,8,13,...
num1=input('Enter first number in the Fibonacci sequence:');
num2=input('Enter second number in the Fibonacci sequence:');
N=input('Enter total number of elements requested for the sequence:');
x=zeros(1,N);
x(1)=num1;
x(2)=num2;
for i=3:N;
    x(i)=x(i-1)+x(i-2);
end
disp(x)

i=1:N;
polar(i,x(i))

clear all
clear clc
disp('Press enter to see Problem 5.')
pause

%Problem 5
choice='r';
while strcmp(choice,'r')
prediction=input('Enter prediction heads or tails: ','s');
coin=randi(2);
if strcmp(prediction,'heads')
if coin==1
disp('You are correct!')
else
disp('You are incorrect!')
end
else
if coin==2
disp('You are correct!')
else
disp('You are incorrect!')
end
end
choice=input('Enter r to play again: ','s');
end