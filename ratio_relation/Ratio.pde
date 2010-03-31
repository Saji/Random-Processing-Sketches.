class Ratio{
  float BARW = 3, SPACE = 20;
  float n=20,d=20, barl=60, x=0,y=0;
  
  Ratio(){}
  
  void go(){
    line(0,0-SPACE, n,0-SPACE);
    pushStyle();
    strokeWeight(BARW);
    line(-(barl/2),0, barl/2,0);
    popStyle();
    line(0,0+SPACE, d,0+SPACE);
  }
}
