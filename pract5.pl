# Maximum of Two Numbers
% Case 1: X is greater than or equal to Y
max(X, Y, X) :-
    X >= Y.

% Case 2: Y is greater than X
max(X, Y, Y) :-
    Y > X.
