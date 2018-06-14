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
