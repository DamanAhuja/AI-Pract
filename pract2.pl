# Implement conc(L1, L2, L3) and append List L3
% Base case: if first list is empty, result is second list
conc([], L2, L2).

% Recursive case: take head of L1 and keep building result
conc([H|T], L2, [H|R]) :-
    conc(T, L2, R).
