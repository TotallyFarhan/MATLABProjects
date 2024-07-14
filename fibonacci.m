% MATLAB Homework Assignment Question 1
% Takes in a number, and prints the fibonacci sequence up to the nth term.

% Takes in a positive integer and stores it in n
n = input("Put in a positive integer n: ");

% Checks for whether input was positive and an integer, and if not, makes
% input run again
while n <= 0 || (mod(n, 1) ~= 0)
    n = input("That was not a positive integer. Put in a positive integer n: \n");
end

% Array containing first three numbers in fibonacci sequence
F = [0 1 1];

% Checks if user inputs for first, second or third number in sequence and
% prints it
if n == 1
    fprintf("%d ", F(1))
elseif n == 2
    fprintf("%d ", F(1:2))
else
    fprintf("%d ", F(1:3))
end

% For when user inputs number greater, calculates the next element of the
% sequence and prints it
for i = 4:n
    F(i) = F(i-1) + F(i-2) + F(i-3);
    fprintf("%d ",F(i))
end