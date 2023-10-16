loop(0).
loop(N):- N>0, M is N-1, loop(M), write(N),nl.
