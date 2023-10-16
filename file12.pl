writesquares(1):-write(1),nl.
writesquares(N):-N>0, N1 is N-1, writesquares(N1),M is N*N,write(M), nl.
