powFast(_, 0, 1).

powFast(X,N,Pow):-
N > 0,
N mod 2 =:= 0,
K is N div 2,
powFast(X, K, Pow2),
Pow is Pow2 * Pow2.

powFast(X,N,Pow):-
N > 0,
N mod 2 > 0,
K is (N - 1) div 2,
powFast(X, K, Pow2),
Pow is X * Pow2 * Pow2.