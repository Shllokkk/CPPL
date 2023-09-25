capital(london,england).
european(england):-write("God save the Queen!"),nl.
pred(X, 'european capital'):-capital(X,Y), european(Y), write(X),nl.
