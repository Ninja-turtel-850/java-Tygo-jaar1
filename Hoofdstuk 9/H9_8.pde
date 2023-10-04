
void setup (){
  size(500,500);
}

void draw(){
  background(255,255,255);
 tekenDriehoek(100,100,250,250,175,175);
}

void tekenDriehoek(int x1, int y1, int x2, int y2, int x3, int y3){
 // lijn 1
  line(x1,y1,x2,y2);
  // lijn 2
  line(x1,y2,x1,y1);
  // lijn 3
  line(x1,y2,x2,y2);


}
