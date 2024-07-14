% Farhan Uddin MATLAB Homework Assignment Question 1
% Takes in a list of intervals and checks to see if any of them overlap. If
% they do, then the script merges the intervals together.

% Takes in array of intervlas
n = input("Input array of intervals in the form [a b; c d;...]: \n");

% Sorts the intervals into order by the first number in each interval
n = sortrows(n, 1);

% Creates a variable for holding the new intervals
intervals = [];

% Loops through each of the intervals from the input
for i=1:size(n, 1)
    % Checks if the current interval does not need to be merged or nothing
    % has been added to the new intervals array yet
    if (isempty(intervals) || intervals(end, 2) <= n(i, 1))
        % Adds the current interval into the interval array
        intervals = [intervals; n(i, :)];
    else
        % If needs to be merged, merges by setting end value to the bigger
        % number between the last interval and current interval
        intervals(end, 2) = max(intervals(end, 2), n(i, 2));
    end
end    

% Displays all the merged intervals of the input
disp(intervals);
