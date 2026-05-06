# Reverse a List
% Base case: empty list
reverse([], []).

% Recursive case
reverse([H|T], R) :-
    reverse(T, RT),
    append(RT, [H], R).
