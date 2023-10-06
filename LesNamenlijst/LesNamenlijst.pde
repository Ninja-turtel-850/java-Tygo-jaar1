/*  Opdracht NamenLijst
Probeer in de String[Array] namenLijst de namen Jesse en Kees te vinden met code.
Als je een naam vindt dan moet je de naam + " gevonden!" printen. Anders "bestaat niet." printen;

Wat gebeurt er en wat lukt er niet?

*Bonus maak hiervan een methode die een naam als parameter krijgt
  
*/

String[] namenlijst = {"Piet","Joris","Ronald","Billy","Jesse", "Niek"}; 

String naam = "piet";

boolean gevonden = false;

void setup(){
  zoeknaam(namenlijst ,"jesse");
}
void zoeknaam(String[]lijst,String naam){
for(int i = 0; i<6; i++){
if(namenlijst[i].equals(naam)){
  print("gevonden");
  gevonden = true;
}
}
if(gevonden== false){
  print("niet gevonden");
}
}
