sumto(1,1).
sumto(N,S):- N>1, N1 is N-1, sumto(N1,S1), S is S1+N.
