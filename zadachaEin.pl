neighbors(X, Y, List) :- nextto(X, Y, List).
neighbors(X, Y, List) :- nextto(Y, X, List).

einstein :-
    Houses = [_,_,_,_,_],
    nth1(1, Houses, [norwegian,_,_,_,_]),
    member([englishman,_,_,_,red], Houses),
    nextto([_,_,_,_,green], [_,_,_,_,white], Houses),
    member([dane,_,_,tea,_], Houses),
    neighbors([_,_,marlboro,_,_], [_,cat,_,_,_], Houses),
    member([_,_,dunhill,_,yellow], Houses),
    member([german,_,rothmans,_,_], Houses),
    nth1(3, Houses, [_,_,_,milk,_]),
    neighbors([_,_,marlboro,_,_], [_,_,_,water,_], Houses),
    member([_,bird,pallmall,_,_], Houses),
    member([swede,dog,_,_,_], Houses),
    neighbors([norwegian,_,_,_,_], [_,_,_,_,blue], Houses),
    member([_,horse,_,_,blue], Houses),
    member([_,_,winfield,beer,_], Houses),
    member([_,_,_,coffee,green], Houses),
    member([Owner,fish,_,_,_], Houses),
    print('Owner of the fish: '),
    print(Owner), nl, print('Full solution: '),
    print(Houses), nl.


