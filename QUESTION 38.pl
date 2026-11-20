fact(sunny).
fact(warm).

infer(Facts, wear_cotton) :-
    member(sunny, Facts),
    member(warm, Facts).

infer(Facts, go_outside) :-
    member(wear_cotton, Facts).

forward_chain(Facts, Result) :-
    (infer(Facts, NewFact),
     \+ member(NewFact, Facts)
    ->
     forward_chain([NewFact|Facts], Result)
    ;
     Result = Facts
    ).