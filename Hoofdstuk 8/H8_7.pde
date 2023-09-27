boolean doorgaan = true;
int teller = 10;

while(doorgaan){
  println(teller);
  if(teller > 20){
    doorgaan = false;
  }else{
    teller++;
  }
}
