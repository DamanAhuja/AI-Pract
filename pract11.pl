# Sum of List
% Base case
sumlist([], 0).

% Recursive case
sumlist([H|T], S) :-
    sumlist(T, S1),
    S is H + S1.
