fill(x,y).
fill(2,0):-
nl,
write('Goal State is Reached....').
fill(X,Y):-
X=0,
Y=<1,
nl,
write('Fill the 4-Gallon Jug:(4,'),write(Y),write(')'),fill(4,Y).
fill(X,Y):-
Y=0,
X>=3,
nl,
write('Fill the 3-Gallon Jug:('),
write(X),
write(',3)'),
fill(X,3).
fill(X,Y):-
X+Y>=4,
Y=3,
X=3,
Y1 is Y-(4-X),
nl,
write('Pour water from 3-Gallon Jug to 4-Gallon until is full:(4,'),
write(Y1),

write(')'),
fill(4,Y1).
fill(X,Y):-
X+Y>=3,
X=4,
Y=<1,
X1 is X-(3-Y),
nl,
write('Pour water from 4-Gallon Jug to 3-Gallon until is full:'),
write(X1),
write(',3)'),
fill(X1,3).
fill(X,Y):-
X+Y=<4,
X=0,
Y>1,
X1 is X+Y,
nl,
write('pour all the water from 3-Gallon Jug to 4-Gallon:('),
write(X1),
write(',0)'),
fill(X1,0).
fill(X,Y):-
X+Y<3,
Y=0,
Y1 is X+Y,
nl,

write('Pour all the water from 4-Gallon Jug too 3-Gallon:(0,'),
write(Y1),
write(')'),
fill(0,Y).
fill(X,Y):-
Y>=2,
X=4,
nl,
write('Empty the 4-Gallon Jug on Ground:(0,'),
write(Y),
write(')'),
fill(0,Y).
fill(X,Y):-
Y=3,
X>=1,
nl,
write('Empty the 3-Gallon Jug on Ground:('),
write(X),
write(',0)'),
fill(X,0).
fill(X,Y):- X>4,Y<3,
write('4L Jug Overflowed.'),nl.
fill(X,Y):- X<4, Y>3,
write('3L Jug Overflowed.'),nl.
fill(X,Y):-X>4,Y>3,
write('4L3L Jug Overflowed.'),nl.