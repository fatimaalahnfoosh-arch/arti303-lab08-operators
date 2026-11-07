% ARTI 303 - Lab 8 - Tasks 2 and 3

% ------------------------------------------------------------
% Task 2 - sumlist(List, Sum)
% Sum is the total of a list of numbers.
% ------------------------------------------------------------

% Base case: the sum of no numbers is 0.
sumlist([], 0).

% Recursive case: sum the tail, then add the head.
sumlist([H|T], Sum) :-
    sumlist(T, Rest),
    Sum is H + Rest.

/* Test queries:

?- sumlist([1,2,5,7], S).
S = 15.

?- sumlist([], S).
S = 0.
*/

% ------------------------------------------------------------
% Task 3 - Total and Average of three numbers
% The user types a full stop after every number.
% ------------------------------------------------------------

total_average :-
    write('Enter the first number: '),  read(X),
    write('Enter the second number: '), read(Y),
    write('Enter the third number: '),  read(Z),
    Total is X + Y + Z,
    Average is Total / 3,
    nl,
    write('Total = '),   write(Total),   nl,
    write('Average = '), write(Average), nl.

/* Sample run:

?- total_average.
Enter the first number: 4.
Enter the second number: 5.
Enter the third number: 8.

Total = 17
Average = 5.666666666666667
true.
*/
