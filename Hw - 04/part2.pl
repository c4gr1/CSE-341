:- style_check(-singleton).
schedule(canakkale,erzincan,6).
schedule(erzincan,antalya,3).
schedule(antalya,izmir,2).
schedule(izmir,istanbul,2).
schedule(antalya,diyarbakir,4).
schedule(diyarbakir,ankara,8).
schedule(izmir,ankara,6).
schedule(ankara,istanbul,1).
schedule(istanbul,rize,4).
schedule(ankara,rize,5).
schedule(ankara,van,4).
schedule(van,gaziantep,3).

schedule(erzincan,canakkale,6).
schedule(antalya,erzincan,3).
schedule(izmir,antalya,2).
schedule(istanbul,izmir,2).
schedule(diyarbakir,antalya,4).
schedule(ankara,diyarbakir,8).
schedule(ankara,izmir,6).
schedule(istanbul,ankara,1).
schedule(rize,istanbul,4).
schedule(rize,ankara,5).
schedule(van,ankara,4).
schedule(gaziantep,van,3).

connection(X,Y,Z) :- schedule(X,Y,Z).
