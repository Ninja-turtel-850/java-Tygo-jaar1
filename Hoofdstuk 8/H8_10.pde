int xwaarde = 40;

size(250,250);
background(255,255,255);

for(int i = 0; i < 5; i++){
  rect(80 - xwaarde/2,100 - xwaarde/2,10,10);
  xwaarde -= 20;
}
