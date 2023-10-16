dFact(N, F) :-
    dFact(N, F, 1).

	dFact(0, F, F).
dFact(N, F, Acc) :-
    N > 0,
    N1 is N - 2,
    Acc1 is Acc * N,
    dFact(N1, F, Acc1).