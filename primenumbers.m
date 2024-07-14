% MATLAB Homework Assignment Question 3
% Takes in an input and checks if it is a prime number, and if not,
% displays its factors

% Takes in a positive integer and stores it in n
n = input("Put in a positive integer n: ");

% Checks for whether input was positive and an integer, and if not, makes
% input run again
while n <= 0 || (mod(n, 1) ~= 0)
    n = input("That was not a positive integer. Put in a positive integer n: \n");
end

% Boolean for checking if number is prime or not (0 = true)
prime = 0;

% Array to store factors
factors = [];

% Loops so index goes from 2 to the square root of the number inputted
for i = 2:sqrt(n
    % Checks if the number inputted is divisible by index being iterated
    if (mod(n, i) == 0)
        % If true, sets prime boolean equal to 1 (false)
        prime = 1;
        % Adds the index into the factors list for the number n
        factors(end+1) = i;
    end
end

% Checks if the number was determined as prime
if (prime == 0)
    % Displays that n is prime
    fprintf("%d is prime", n);
else
    % Displays that n is not prime and lists the factors
    fprintf("%d is not prime. here are factors: ", n);
    disp(factors)
end