% === Facts ===

% Birth (Name, Birth_Year)
born(gennady_ankudinov, 1949).
born(alla_ankudinova, 1950).
born(igor_vdovin, 1952).
born(valentina_vdovina, 1955).

born(sergei_ankudinov, 1971).
born(konstantin_ankudinov, 1963).
born(natalya_vdovina, 1977).
born(konstantin_vdovin, 1972).
born(natasha_vdovina, 1978).

born(kirill_ankudinov, 2005).
born(ilya_ankudinov, 2009).
born(ksenia_ankudinova, 1993).
born(evgeni_ankudinov, 1979).
born(sergei_ushaodzhan, 1980).
born(irina_vdovina, 2001).
born(eduard, 1988).

born(daniil_ankudinov, 2018).
born(timofei_vdovin, 2018).
born(matvei_vdovin, 2019).

% Death (Name, Death_Year)
died(igor_vdovin, 2015).

% Marriage (Husband, Wife, Marriage_Year, Divorce_Year (0 if not divorced))
married(gennady_ankudinov, alla_ankudinova, 1970, 0).
married(igor_vdovin, valentina_vdovina, 1971, 0).
married(konstantin_ankudinov, natalya_vdovina, 2003, 0).
married(konstantin_vdovin, natasha_vdovina, 1990, 0).
married(ksenia_ankudinova, sergei_ushaodzhan, 2016, 2022).
married(irina_vdovina, eduard, 2017, 0).

% Parent-child relationships (Parent, Child)
parent(gennady_ankudinov, konstantin_ankudinov).
parent(gennady_ankudinov, sergei_ankudinov).
parent(alla_ankudinova, konstantin_ankudinov).
parent(alla_ankudinova, sergei_ankudinov).
parent(igor_vdovin, konstantin_vdovin).
parent(igor_vdovin, natalya_vdovina).
parent(valentina_vdovina, konstantin_vdovin).
parent(valentina_vdovina, natalya_vdovina).

parent(konstantin_ankudinov, kirill_ankudinov).
parent(konstantin_ankudinov, ilya_ankudinov).
parent(konstantin_ankudinov, ksenia_ankudinova).
parent(konstantin_ankudinov, evgeni_ankudinov).
parent(natalya_vdovina, ilya_ankudinov).
parent(natalya_vdovina, kirill_ankudinov).
parent(konstantin_vdovin, irina_vdovina).
parent(natasha_vdovina, irina_vdovina).

parent(ksenia_ankudinova, daniil_ankudinov).
parent(sergei_ushaodzhan, daniil_ankudinov).
parent(irina_vdovina, timofei_vdovin).
parent(irina_vdovina, matvei_vdovin).
parent(eduard, timofei_vdovin).
parent(eduard, matvei_vdovin).

% === Rules ===
areSiblings(Sibling1, Sibling2) :-
    parent(Parent, Sibling1),
    parent(Parent, Sibling2),
    Sibling1 \= Sibling2.

isAlive(Person) :-
    born(Person, _),
    \+ died(Person, _).

isDeceased(Person) :-
    died(Person, _).

areSpouses(Person1, Person2) :-
    married(Person1, Person2, _, 0).

isAncestor(Ancestor, Descendant) :-
    parent(Ancestor, Descendant).
isAncestor(Ancestor, Descendant) :-
    parent(Ancestor, Intermediate),
    isAncestor(Intermediate, Descendant).

isDescendant(Descendant, Ancestor) :-
    isAncestor(Ancestor, Descendant).

areCousins(Cousin1, Cousin2) :-
    areSiblings(Parent1, Parent2),       
    parent(Parent1, Cousin1),       
    parent(Parent2, Cousin2),    
    Cousin1 \= Cousin2.

isNephew(Nephew, Person) :-
    areSiblings(ParentOfNephew, Person),
    parent(ParentOfNephew, Nephew).

marriedInYear(Person, Spouse, Year) :-
    married(Person, Spouse, MarriageYear, DivorceYear),
    MarriageYear =< Year,
    (DivorceYear = 0; DivorceYear >= Year).