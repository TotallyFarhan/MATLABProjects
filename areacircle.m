% Script to find area of circle
% The user needs to provide the radius of the circle

radius1 = input('enter the radius of circle 1: ');
radius2 = input('enter the radius of circle 2: ');

area1 = pi * radius1^2;
area2 = pi * radius2^2;

area = abs(area1 - area2);

display(area)