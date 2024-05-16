warm_blooded(penguin).
warm_blooded(human).
produce_milk(penguin).
produce_milk(human).
have_feathers(penguin).
have_hair(human).

mammal(X) :-
    warm_blooded(X),
    produce_milk(X),
    have_hair(X).


parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).
parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).
parent(bob, carl).
parent(bob, charlie).

related(X, Y) :-
    parent(X, Y).
related(X, Y) :-
    parent(X, Z),
    related(Z, Y).
