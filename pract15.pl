# Delete Nth Element
% Delete first element
delete(1, [_|T], T).

% Recursive case
delete(N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    delete(N1, T, R).