# Insert at Nth Position
% Insert at position 1
insert(I, 1, L, [I|L]).

% Recursive case
insert(I, N, [H|T], [H|R]) :-
    N > 1,
    N1 is N - 1,
    insert(I, N1, T, R).
