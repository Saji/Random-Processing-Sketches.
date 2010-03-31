/* FIXME:
   Draggable doesn't know how to deal with translate.
   This sketch is fail! 
*/

Ratio r1;
Draggable d1;

void setup(){
  size(400,400,P2D);
  r1 = new Ratio();
  d1 = new Draggable();
}

void draw(){
  background(255);
  translate(width/2, height/2);
  r1.go();
  d1.go();
}

void mousePressed(){
  d1.listen();
}
