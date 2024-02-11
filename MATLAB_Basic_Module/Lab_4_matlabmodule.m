% 1. Cell Arrays:
% 
% Create a cell array containing various data types (numbers, text, and variables).
% Access and display specific elements within the cell array.

CellArray = {120 , 'MATLAB Programming', [2 4 6 8 10] , 2.075};
disp(CellArray{1});
disp(CellArray{2});
disp(CellArray{3}); 
disp(CellArray{4});



% 2. Structures:
% 
% Create a simple structure to store information about a person (name, age, city).
% Access and display the structure fields.

person.name = 'Ahmed';
person.age = 30;
contact.Address.city = 'Zefta';
person.contact = contact;

disp (['The Name is ' person.name]);
disp (['The Age is ' num2str(person.age)]);
disp (['The City is ' person.contact.Address.city]);

% 3. Character Data:
% 
% Create a character array with your name.
% Concatenate your name with another character array.
% Display the results.

Str1 = 'Hello Every One';
Result = strcat (Str1,' In THE World');
disp (Result);

% 4. Conditional Statements (If):
% 
% Write an if statement that checks if a number is even or odd.
% Display a message based on the result of the if statement.

X = 11;
if mod (X , 2) ==0
    disp ('The number is even');
else
    disp ('The number is odd');
end

% 5. For Loops:
% 
% Create a for loop to generate a sequence of numbers (e.g., 1 to 10).
% Display the numbers within the loop.

for i = 1:10
     disp (i);
end

% 6. Basic Plotting:
% 
% Generate data for a simple plot (e.g., a sine wave).
% Plot the data with proper labels and a legend.

x = linspace (0,2*pi*200);
y = sin(x);

plot(x,y)
title ('Sine Wave');
xlabel ('X-axis');
ylabel ('Y-axis');
legend ('Sine');










