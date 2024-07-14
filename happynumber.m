% Takes in a number
n = input("Enter in number to find if it is happy :D ");

% Checks for whether row was positive and an integer, and if not, makes
% input run again
while n <= 0 || (mod(n, 1) ~= 0)
    n = input("That was not a positive integer. Put in a positive integer n: \n");
end

% Creates an array of sums and adds the inputted number to it
sums = [];
sums(end+1) = n;

% Variable to check status of if number is happy or not
happynum = 0;

% Loop that checks whether a number has been declared happy or not
while happynum ~= 1 && happynum ~= 2
    % Creates a variable to track the new sum being calculated
    newSum = 0;
    % Creating an array to hold the digits for the previous sum
    digits = [];
    
    % Splits the previous sum into its digits, squares it, and adds it to
    % new sum
    digitArr = split(num2str(sums(1)), "");
    digitArr = cell2mat(digitArr(2:end-1));
    
    for j=1:size(digitArr)
        digits(end+1) = digitArr(j)-'0';
        newSum = newSum + (digits(j)^2);
    end
    
    % Checks if new sum equals one
    if (newSum == 1)
        happynum = 1;
    % Checks if new sum has already been found before
    elseif (ismember(newSum, sums))
        happynum = 2;
    end
    
    % Adds the new sum to the beginning of the sums array
    sums = [newSum, sums];
end

% If happynum variable is 1, then prints that input was a happy number


