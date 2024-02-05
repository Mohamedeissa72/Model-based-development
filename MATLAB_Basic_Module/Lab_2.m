%Task 1: While Loop
%Write a MATLAB script that uses a while loop to print even numbers from 2 to 20.

num = 2;
N = 20;
while num < N
    num = num + 2;
    fprintf ('number is even %d\n', num);
end

%Create a script that calculates the factorial of a given number using a while loop. Prompt the user for input.

userInput = input('Enter a positive  integer to calculate its factorial: ');
while ( userInput < 0 || mod(userInput, 1) ~= 0 )
    disp(' enter a positive integer.');
    userInput = input('Enter a positive integer to calculate its factorial: ');
end

factorialResult = 1;
counter = 1;

while counter <= userInput
    factorialResult = factorialResult * counter;
    counter = counter + 1;
end

fprintf('The factorial of %d is: %d\n', userInput, factorialResult);

%Task 2: Switch Statement
%Write a MATLAB script to calculate the cost of a trip based on the mode of transportation.
%Use a switch statement to handle different cases. The modes are: car, train, bus, and airplane. 
%Each mode has a different cost per mile.
% Extend the cost calculation script by including an input for the number of miles and then use the switch statement to calculate the total cost.


costPerMileCar = 5;    
costPerMileTrain = 10;
costPerMileBus = 15;
costPerMileAirplane = 20;

   
 ModeOfTransportation ='airplane'
 Distance = input('Enter the number of miles for the trip: ');

    switch  ModeOfTransportation
        case 'car'
           TripCost =  Distance*costPerMileCar;
        case 'train'
           TripCost =  Distance*costPerMileTrain;
        case 'bus'
          TripCost =  Distance*costPerMileBus;
        case 'airplane'
            TripCost =  Distance*costPerMileAirplane;
        otherwise
            error('Invalid mode of transportation');
    end

    fprintf('The cost of the trip  is %d.\n',  TripCost);

   % Create a script that translates a color code into its corresponding name using a switch statement. 
   % Prompt the user for input and handle at least five different color codes.

   colorCode = input('Enter a color code: ', 's');

    switch colorCode
        case 'R'
            colorName = 'Red';
        case'G'
            colorName = 'Green';
        case 'B'
            colorName = 'Blue';
        case 'Y'
            colorName = 'Yellow';
        case 'W'
            colorName = 'White';
        otherwise
            error('Invalid color code.')
    end

   fprintf('The color corresponding to the code is %s\n', colorName);



