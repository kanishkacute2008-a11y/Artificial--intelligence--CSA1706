at(monkey, floor).
at(box, corner).
at(banana, ceiling).

can_reach :-
    at(monkey, floor),
    at(box, corner),
    at(banana, ceiling),
    write('Monkey moves the box under the banana.'), nl,
    write('Monkey climbs the box.'), nl,
    write('Monkey catches the banana.'), nl.