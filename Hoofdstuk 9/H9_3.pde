int mijngetal;

void setup(){
  
  println(mijnFunctie(10,20));
  mijngetal = mijnFunctie(15,45);
  println(mijngetal);
}

void draw(){
  
}

int mijnFunctie(int getal1, int getal2){
  int antwoord; 
  antwoord= (getal1 + getal2)/2;
  return antwoord; 
} 
