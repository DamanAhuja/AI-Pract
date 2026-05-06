# Even and Odd Length List
% Base case: empty list has even length
evenlength([]).

% Remove 2 elements each time
evenlength([_,_|T]) :-
    evenlength(T).

% Odd length: remove 1 element, then even
oddlength([_|T]) :-
    evenlength(T).
