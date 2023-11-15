  char[] xeno = {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '};
  
  int player = 1;
  boolean verloren = false;
  // dit maakt het vlak en de achtergrondkleur
  
  void setup(){
    size(600, 600);
    background(255,255,255);
    Speelboord();
   
  }
  
  
  void draw() {
    drawPlayer();
    if (!verloren){
      WinnerCheck();
      Draw();
    }
  }
  
  
  void drawPlayer() {
    if (mousePressed) {
      locator();
    }
  }
  
  // maak het speel boord
  void Speelboord () {
    for (int i = 0; i<3; i++) {
    for (int j = 0; j<3; j++) {
    fill(255,255,255);
    rect(200*i, 200*j, 200, 200 );
      }
    }
  }
  
  
  int x, y;
  //tekend de X 
  void drawX ( int x, int y ) {
    print(x+(y*3));
    xeno[x+(y*3)] = 'X';
    stroke(0,0,255);
    strokeWeight(2);
    fill(0,0,255);
  
    line(x*200, y*200, x*200+200, y*200+200);
    line( x*200+200, y*200, x*200, y*200+200);
  }
  //tekend het O
  void drawO ( int x, int y ) {
    stroke(255,0,0);
    strokeWeight(2);
    noFill();
    ellipse(x*200+100, y*200+100, 200, 200);
    xeno[x+(y*3)] = 'o';
  }
  
  
void WinnerCheck (){
 for (int i = 0; i < 3; i++) {
 if (xeno[i] == xeno[i + 3] && xeno[i] == xeno[i + 6] && xeno[i] != ' ') {
 verloren = true;
 println(xeno[i] + " wins!");
 return;
}
 int Row = i * 3;
 if (xeno[Row] == xeno[Row + 1] && xeno[Row] == xeno[Row + 2] && xeno[Row] != ' ') {
 verloren = true;
 println(xeno[Row] + " wins!");
 return;
}
}
 if ((xeno[0] == xeno[4] && xeno[0] == xeno[8] && xeno[0] != ' ') || (xeno[2] == xeno[4] && xeno[2] == xeno[6] && xeno[2] != ' ')) {
 verloren = true;
 println(xeno[4] + " wins!");
 return;
}
}
  
  
  void Draw() {
    //gelijk spel 
    boolean isFull = true;
    for (char cell : xeno) {
    if (cell == ' ') {
        isFull = false;
        break;
      }
    }
    if (isFull && !verloren) {
      verloren = true;
      println("draw!");
    }
  }
  
  
  //de locatie van de muis 
  void locator() {
    x = mouseX;
    y = mouseY;
    x = x/200;
    y = y/200;
    if (xeno[x+(y*3)] == ' ') {
      
  // als player one het kruisje heeft geplaast is O aan de beurt
    if (player == 1) {
        drawX(x, y);
        player = 2;
      } else {
        drawO(x, y);
        player = 1;
      }
    }
  }
