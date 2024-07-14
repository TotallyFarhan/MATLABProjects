% Farhan Uddin MATLAB Homework Assignment Question 2
% Takes in an array reprsenting a binary tree and checks all paths to see
% if the sums of the paths equals a target number

% Takes in a binary tree in the form of an array and a target sum
tree = input("Input array of numbers for binary tree: ");
target = input ("Input number for path numbers to add up to: ");

% Creates variables for the number of rows, number of terms in the tree,
% and a variable to track if the target has been reached
rows = 0;
numTerms = 0;
rowIndex = 1;
isTargetReached = 0;

% Loops an algorithm to add the number of terms in each row and count
% number of rows until number of terms is equal to that of the tree to get
% number of rows in the tree
while numTerms ~= length(tree)
    numTerms = numTerms + 2^(rowIndex - 1);
    rowIndex = rowIndex + 1;
    rows = rows + 1;
end

% Variable calculating number of possible path combinations
paths = 2^(rows - 1);

% Variable to store all path sums
pathSums = [];

% Loops through each bottom term in the tree
for i = paths:length(tree)
    % Keeps track of the term in the path
    treeIndex = i;
    % Sets the sum to the first bottom term in the path
    pathSum = tree(treeIndex);
    % Runs an algorithm to get all the terms in a path and adding it to the
    % path sum ONLY IF THE PATH STARTS WITH A LEAF IN THE BOTTOM
    if (tree(treeIndex) ~= 0)
        while (treeIndex ~= 1)
            treeIndex = floor(treeIndex / 2);
            pathSum = pathSum + tree(treeIndex);
        end
    % Adds the pathsum to the pathsum array
    pathSums(end + 1) = pathSum;
    end
end

% Loops through the pathsums array and checks if any of the sums are the
% target sum and changes the variable keeping track of if the target was
% reached 
for k = 1:length(pathSums)
    if (pathSums(k) == target)
        isTargetReached = 1;
    end
end

% Displays true or false based on the status of the isTargetReached
% variable
if (isTargetReached == 0)
    disp("False");
else
    disp("True");
end

pathSums

