% Part 1: Creating Numeric Arrays
A = [3 2 1;6 5 4;9 8 7];
B = [12 11 10;15 14 13;18 17 16];
matrixSum = plus(A,B);
disp (matrixSum);

% Part 2: Matrix Concatenation
rowvector = 1:5;
columnvector =[6;7;8;9;10];
horizontalConcat1 = [rowvector.',columnvector];
horizontalConcat2 = horzcat(rowvector.',columnvector);
horizontalConcat3 = cat(2,rowvector.',columnvector);
% horizontalConcat1=horizontalConcat2=horizontalConcat3

% Part 3: Using repmat Function
originalMatrix = [2 4;6 8];
repeatedMatrix = repmat (originalMatrix,2,2);

% Part 4: Challenge
identityMatrix = eye(3,3);
matrixProduct = identityMatrix * A;

