% ARTI 303 - Lab 8 - Task 1
% Boolean expression:  (A AND B) OR (NOT A AND NOT B)
% Built like slide 32: truth tables as three-argument facts,
% then one rule that wires the gates together.
% (No 'invalid' catch-all clauses, as required.)

% AND truth table: and(Input1, Input2, Output)
and(true,  true,  true).
and(true,  false, false).
and(false, true,  false).
and(false, false, false).

% OR truth table: or(Input1, Input2, Output)
or(true,  true,  true).
or(true,  false, true).
or(false, true,  true).
or(false, false, false).

% Negation: neg(Input, Output)
neg(true,  false).
neg(false, true).

% (A AND B) OR (NOT A AND NOT B)
% logicGate(A, B, Output)
% Gates used: two ands, two negs, one or.
logicGate(A, B, O) :-
    and(A, B, X),        % X = A AND B
    neg(A, NA),          % NA = NOT A
    neg(B, NB),          % NB = NOT B
    and(NA, NB, Y),      % Y = NOT A AND NOT B
    or(X, Y, O).         % O = X OR Y

/* Test queries (press ; after each answer):

?- logicGate(true, true, O).
O = true ;
false.

?- logicGate(true, false, O).
O = false ;
false.

?- logicGate(false, true, O).
O = false ;
false.

?- logicGate(false, false, O).
O = true ;
false.
*/
