%Problem 4
A = 5;
cc = 0.001; %convergence criterion
s = my_sqrt(A, cc); % Halley's SQRT
S = sqrt(A); % In-built SQRT
disp('Halleys Algorithm')
disp(s)
disp('Built-In Algoithm')
disp(S)
disp('Error')
disp(abs(s-S))

% SQRT using Halley's Algorithm
function s = my_sqrt(A, cc)
x1 = 1; % Initial guess
while true
X_h = x1;
Y = x1^2 / A;
x1 = (x1/8) * (15 - Y*(10 - 3*Y));
if abs(x1 - X_h) <= cc
s = x1;
break
end
end
end