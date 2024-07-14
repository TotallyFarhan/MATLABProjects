% MATLAB Homework Assignment Question 4
% This script takes in the length for the array of temperatures in
% fahrenheit and converts the temperatures to celsius.

% Intakes the list of temperatures and length of the array
list = input("Enter the number of then the temperatures to be converted: ", "s");

% Deletes the whitespace and puts each number in an array
parsedList = split(list, " ");

% Takes the first element containing length and turns it into a double
length = str2double(parsedList(1));

% Deletes the first element containing the length for the array
parsedList = parsedList(2:end);

% Makes an empty array with the length given from the input (will later
% hold temperatures in fahrenheit)
arr = zeros(length, 1);

% Makes an empty array with the length given from the input (will later
% hold temperatures after converted to celsius)
temps = zeros(length, 1);

% Loops so array index goes from 1 to the length given in the input
for i = 1:length
    % Converts all the elements in the parsed list into doubles
    arr(i) = str2double(cell2mat(parsedList(i)));
    % Converts the doubles from fahrenheit to celsius
    temps(i) = round((5/9)*(arr(i) - 32));
end

% Displays the temperatures
disp(temps);