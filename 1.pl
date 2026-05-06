% =====================================
% FACTS
% =====================================

% Gender
male(john).
male(paul).
male(mike).
male(tom).

female(lisa).
female(anna).
female(susan).
female(kate).

% Parent relationships
parent(john, paul).
parent(john, anna).
parent(lisa, paul).
parent(lisa, anna).

parent(paul, mike).
parent(paul, kate).
parent(susan, mike).
parent(susan, kate).

parent(anna, tom).


% =====================================
% RULES
% =====================================

% 1. Father & Mother
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).


% 2. Sibling (Improved)
sibling(X, Y) :-
    parent(P1, X), parent(P1, Y),
    parent(P2, X), parent(P2, Y),
    X \= Y,
    P1 \= P2.


% 3. Brother & Sister
brother(X, Y) :-
    sibling(X, Y),
    male(X).

sister(X, Y) :-
    sibling(X, Y),
    female(X).


% 4. Grandparent
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).


% 5. Uncle and Aunt
uncle(X, Y) :-
    brother(X, Z),
    parent(Z, Y).

aunt(X, Y) :-
    sister(X, Z),
    parent(Z, Y).


% 6. Cousins
cousin(X, Y) :-
    parent(A, X),
    parent(B, Y),
    sibling(A, B).



