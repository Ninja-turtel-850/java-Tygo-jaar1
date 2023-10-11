String[] namenlijst = {"jamie","bob","henk","linda","tygo", "thomas"}; 

String naam = "jamie";

boolean gevonden = false;

void setup(){
  zoeknaam(namenlijst ,"piet");
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
