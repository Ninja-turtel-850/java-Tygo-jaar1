/*
Opdracht if

We hebben een RPG game waarin spelers drie dobbelstenen gooien om schade te doen tegen de vijand
Als een van de dobbelstenen een 1 is, wordt er geen schade gedaan. We zeggen dan tegen de speler "mis!".
Anders wordt de schade berekend door het gemiddelde gooi van dobbelstenen te pakken. We vertellen dan tegen de speler : het aantal schade + "HIT!"

>Bonus opdracht<
Als alle drie de dobbelstenen 1 zijn wrijven we dat er lekker in door "Critical MISS!" te zeggen.
Als alle drie dobbelsten 6 zijn feliciteren we de speler door een leuk bericht.


*/

int steen1 = 0;
int steen2 = 7;
int steen3 = 8;
int gemiddelde = (steen1+steen2+steen3)/3;
String resultaat = " ";
  

//Je code komt hier
if(steen1 ==1 || steen2 ==1|| steen3 ==1){
  
resultaat ="mis";
}
else{resultaat= gemiddelde + " Hit";
}



print(resultaat);
