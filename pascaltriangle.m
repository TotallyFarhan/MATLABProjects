% Takes in Pascal Triangle row into input
rows = input("Enter in Pascal Triangle Row (0 is row 1): ");

% Checks for whether row was positive and an integer, and if not, makes
% input run again
while rows < 0 || (mod(rows, 1) ~= 0)
    rows = input("That was not a positive integer. Put in a positive integer n: \n");
end

% Accounts for the row starting from 0th index
rows = rows + 1;
% Creates an empty arrow of rows for the requested pascal triangle
triangle = zeros(rows);

% Loops through all the rows of the pascal triangle
for i=1:rows
    % Loops through each column in the being looped through
    for j=1:i
            % Assigns the ends of each row in the triangle to 1
            if (j == 1 || j == i)
                triangle(i, j) = 1;
            % Assigns the rest of the numbers to the sums of the numbers
            % above in the triangle
            else
                triangle(i, j) = triangle(i-1, j-1) + triangle(i-1, j);
            end
    end
end

% Creates an array to show the row requested from the pascal triangle
row = [];
for k=1:rows
    row(k) = triangle(rows, k);
end

% Displays the Pascal Triangle Row requested from the input
disp(row);