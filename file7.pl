print_numbers(0).
print_numbers(N) :-N >= 1,write(N),nl,N1 is N - 1,print_numbers(N1).
