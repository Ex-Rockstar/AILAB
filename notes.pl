
loves(romeo, juliet).
loves(juliet, romeo) :- loves(romeo, juliet).


happy(albert).
happy(alice).
happy(bill).
with_albert(alice).

runs(albert) :-
    happy(albert).

dances(alice) :-
    happy(alice),
    with_albert(alice).









male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).

female(alice).
female(betsy).
female(diana).

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).
parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).
parent(bob, carl).
parent(bob, charlie).


stabs(muthu, mercutio, sword).
hates(guru, X) :- stabs(X, mercutio, sword).

what_grade(5) :-
    write('Go to kindergarten').
what_grade(6) :-
    write('Go to 1st Grade').
what_grade(Other) :-
    Grade is Other - 5,
    format('Go to grade ~w', [Grade]).


customer(tom, smith, 20.55).
customer(sally, smith, 120.55).

get_cust_bal(FName, LName) :-
    customer(_, LName, Bal),
    write(FName), tab(1),
    format('~w owes us $~2f ~n', [LName, Bal]).

vertical(line(point(X, Y), point(X, Y2))) :- Y2 > Y.
horizontal(line(point(X, Y), point(X2, Y))) :- X2 > X.
