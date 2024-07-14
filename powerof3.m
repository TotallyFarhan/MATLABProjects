% MATLAB Homework Assignment Question 2
% Takes in an input, and checks if it is a power of 3 or not.

% Takes in a positive integer and stores it in n
n = input("Put in a positive integer n: ");

% Checks for whether input was positive and an integer, and if not, makes
% input run again
while n < 0 || (mod(n, 1) ~= 0)
    n = input("That was not a positive integer. Put in a positive integer n: \n");
end

% Creates variable to store exponent that 3 is raised to
x = log(n) / log(3);

% Checks if the exponent is a whole number
if (mod(round(x,3), 1) == 0)
    % If true, returns that n is a power of three
    fprintf("true \n");
else
    % If false, returns that n isnt a power of three
    fprintf("false \n");
end