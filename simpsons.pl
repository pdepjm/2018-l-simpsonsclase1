% Estas cosas se llaman reglas

esBruja(Alguien) :- seQuema(Alguien).
esBruja(Alguien) :- convierteEnGrilloACualquiera(Alguien).
esBruja(Alguien) :- pareceBruja(Alguien).

seQuema(Alguien) :- esDeMadera(Alguien).

esDeMadera(Alguien) :- flota(Alguien).

flota(Alguien) :- pesaLoQue(Alguien,ganso).

pareceBruja(Alguien) :- 
        tieneNariz(Alguien),
        tieneSombrero(Alguien).


%Estos son... hechos:
pesaLoQue(roberto,ganso).
pesaLoQue(castula,ganso). 

tieneNariz(bilardo).


tieneSombrero(castula).
tieneSombrero(roberto).
tieneSombrero(elRabinoKrustovsky).

convierteEnGrilloACualquiera(selma).
convierteEnGrilloACualquiera(45).


hijxDe(homero,abe).
hijxDe(herbert,abe).
hijxDe(bart,homero).
hijxDe(lisa,homero).
hijxDe(maggie,homero).
hijxDe(lisa,marge).
hijxDe(maggie,marge).
hijxDe(bart,marge).
hijxDe(rod,ned).
hijxDe(tod,ned).
hijxDe(milhouse,kirk).

hermanxDe(Uno,Otro):-
    hijxDe(Uno,Padre),
    hijxDe(Otro,Padre),
    Otro \= Uno.

hijxUnicx(Alguien):-
    hijxDe(Alguien,_), 
    not(hermanxDe(Alguien,_)).

% La razón para que exista la primera condición "hijxDe(Alguien,_),"
% es, por un lado que si no la agregao, hijxUnicx(45) es verdadero.
%  Además, si no la agrego, hijxUnicx NO es INVERSIBLE, es decir que
% si yo pregunto hijxUnicx(Quien) no sabe darme ejemplos.
% Un predicado es inversible cuando sabe darme ejemplos que lo hacen verdadero.
% Y hay algunos predicados que no saben, como el \= .