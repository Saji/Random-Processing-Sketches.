Grid g1,g2;
PFont font;
float x = 2; //mouseX times 1/x and xth root of mouseX

void setup(){
  size(1000,100,P2D);
  font = loadFont ("DejaVuSansMono-11.vlw");
  textFont(font);
  g1 = new Grid(0,0, width,height, 5, "x");
  g2 = new Grid(0,0, width,height, 10, "x");
}

void draw(){
  background(255);
  stroke(0,40);
  g1.go();
  stroke(0,70);
  g2.go();
  stroke(0);
  pushStyle();
   stroke(200,0,0);
   strokeWeight(1);
   line(pow(mouseX, 1.0/x), 0, pow(mouseX, 1.0/x), height);
   stroke(0,0,200);
   line(mouseX*1.0/x,0, mouseX*1.0/x,height);
  popStyle();
  fill(0);
  text(str(mouseX),mouseX-10,mouseY-10,30,11);
  fill(200,0,0);
  text(str(pow(mouseX, 1.0/x)),mouseX-42,mouseY-10,30,11);
  fill(0,0,200);
  text(str(mouseX*1.0/x),mouseX+15,mouseY-10,30,11);
}
