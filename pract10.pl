# Member of a List
% Base case: X is head of list
memb(X, [X|_]).

% Recursive case: check in tail
memb(X, [_|T]) :-
    memb(X, T).
