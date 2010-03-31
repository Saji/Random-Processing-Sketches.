Rect r1;
void setup(){
  r1 = new Rect(20,20,30,10);
}
void draw(){
  pushStyle();
  if (r1.mouse) {
    fill(255,0,0);
  }else{
    fill(255);
  }
  r1.go();
  popStyle();
}
