%Task 1: Creating a Simple Function
%Create a new function in MATLAB called mySimpleFunction.
%This function should take two input arguments (numbers) and return their sum.
%Call this function with sample inputs and display the result.

function Sum =  mySimpleFunction (number_1,number_2)

Sum = number_1 + number_2;
disp (Sum);
end

%Task 2: Function Inputs and Outputs
%Create a function named calculateCircleArea that takes the radius of a circle as input and returns the area of the circle.

function area = calculateCircleArea (radius)

area = pi * radius^2;
disp (area);
end

%Task 4: Nested Functions
%Create a main function called outerFunction.
%Inside outerFunction, define another function called innerFunction.
%innerFunction should take two inputs, add them, and return the result.
%Call innerFunction from outerFunction and display the result.

function output =  outerFunction(varargin)
function result = innerFunction (x,y)

result = x+y;
fprintf ('result from innerFunction :%d\n',result)
end

output =innerFunction(varargin{1} , varargin{2});
end

%Task 6: Anonymous Functions
%Create an anonymous function that calculates the area of a triangle. The function should take base and height as inputs.
%Call the anonymous function with different base and height values to calculate triangle areas.

function Area = Calareatriangle (base , height)

Area = 0.5 * base *  height;
fprintf ('Area from Calareatriangle = %d\n',Area);

end

%Task 7: Using Built-in Functions
%Use MATLAB's built-in functions like max, min, and sum in a script.
%Create a vector of numbers and apply these functions to it.

Numbers = 3:10;
max_value = max (Numbers);
min_value = min (Numbers);
sum_value = sum (Numbers);
disp (max_value);
disp (min_value);
disp (sum_value);



