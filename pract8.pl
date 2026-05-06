# Power of a Number
% Base case
power(_, 0, 1).

% Recursive case
power(Num, Pow, Ans) :-
    Pow > 0,
    P1 is Pow - 1,
    power(Num, P1, R1),
    Ans is Num * R1.
