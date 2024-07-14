% MATLAB Homework Assignment Question 1
% Takes in a number of coins, and returns how many complete staircases can
% be made from them

% Takes in a positive integer and stores it in n
n = input("Insert number of coins: ");

% Checks for whether input was positive and an integer, and if not, makes
% input run again
while n <= 0 || (mod(n, 1) ~= 0)
    n = input("That was an impossible number of coins. Put a positive integer number of coins: \n");
end

% Keeps track of the number of stairs
stairs = 0;

% Loops so you start with 1 step in a row and it keeps increasing until you
% have n steps
for i = 1:n
    % Decrease the number of coins by how many blocks in each row of
    % staircase
    n = n - i;
    % Checks to make sure you havent used negative coins
    if (n >= 0)
        % Adds a stair to the complete stair count
        stairs = stairs + 1;
    end
end

% Displays number of complete rows of stairs
fprintf("You can make %d complete rows of stairs.", stairs);