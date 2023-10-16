output_values(Last,Last):- write(Last),nl.
output_values(First,Last):-First=\=Last, write(First),nl,N is First+1,output_values(N,Last).
