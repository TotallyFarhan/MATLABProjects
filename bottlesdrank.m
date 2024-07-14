% MATLAB Homework Assignment Question 2
% Takes in a number of bottles, and how many empty ones are needed to
% exchange it for a full one and calculate how many were drank and how many
% were left remaining.

% Taking in the number of bottles
numBottles = input("Enter number of Full Bottles: ");

% Checks if input is positive integer
while numBottles <= 0 || (mod(numBottles, 1) ~= 0)
    numBottles = input("Invalid number, enter a positive integer: ");
end
% Taking in number of bottles needed to exchange
numExchanged = input("Enter number of Bottles needed to Exchange: ");

% Checks if input is positive integer
while numExchanged <= 1 || (mod(numExchanged, 1) ~= 0)
    numExchanged = input("Invalid number, enter a positive integer that isnt 1: ");
end

% Setting all the inital number of bottles to be full
fullBottles = numBottles;
% Doing the first initial drinking of the bottles
bottlesDrank = 0 + fullBottles;

% Runs the drinking and exchanging process while the number of bottles is
% greater than the amount needed to exchange
while numBottles >= numExchanged
    % Exchanging the empty bottles for full bottles
    fullBottles = floor(numBottles / numExchanged);
    % Calculating how many bottles are remaining and adding it to the total
    % number of bottles
    numBottles = fullBottles + round(rem(numBottles, numExchanged));
    % Drink the bottles that are full
    bottlesDrank = bottlesDrank + fullBottles;
end

% Prints how many bottles were drank in total and how many were remaining
% at the end (as well as adjusts message for when theres only one
% bottle drank or remaining)
if (numBottles == 1)
    if (bottlesDrank == 1)
        fprintf("You drank %d bottle and there was %d empty bottle remaining.", bottlesDrank, numBottles);
    else
        fprintf("You drank %d bottles and there was %d empty bottle remaining.", bottlesDrank, numBottles);
    end
else
    if (bottlesDrank == 1)
        fprintf("You drank %d bottle and there were %d empty bottles remaining.", bottlesDrank, numBottles);
    else
        fprintf("You drank %d bottles and there were %d empty bottles remaining.", bottlesDrank, numBottles);
    end
end