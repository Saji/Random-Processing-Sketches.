int s = 400, u = 20, us = s / u, e = 10; //size, unit nos, unit size, ellipse size.
Draggable e1 = new Draggable(us * 3, us * 5, e, us);
Draggable e2 = new Draggable(us * 5, us * 3, e, us);
Rct r1 = new Rct(0,e1.ypos, e1.xpos,e1.ypos, e1.xpos,s, 0,s);
Rct r2 = new Rct(0,e2.ypos, e1.xpos,e2.ypos, e1.xpos,e1.ypos, 0,e1.ypos);
Rct r3 = new Rct(e1.xpos,e1.ypos, e2.xpos,e1.ypos, e2.xpos,s, e1.xpos,s);
Rct r4 = new Rct(e1.xpos,e2.ypos, e2.xpos,e2.ypos, e2.xpos,e1.ypos, e1.xpos,e1.ypos);

void setup(){
  size(s,s,P2D);
}

void draw(){
  background(255);
  grid(s, us);
  fill(0,100);
  r1.go();
  r1.moveVertex(2, e1.xpos, e1.ypos);
  fill(0,0,100,100);
  r2.go();
  r2.moveVertex(2, e1.xpos, e2.ypos);
  r2.moveVertex(3, e1.xpos, e1.ypos);
  fill(200,0,0,100);
  r3.go();
  r3.moveVertex(1, e1.xpos, e1.ypos);
  r3.moveVertex(2, e2.xpos, e1.ypos);
  fill(0,200,0,100);
  r4.go();
  r4.moveVertex(2, e2.xpos, e2.ypos);
  r4.moveVertex(4, e1.xpos, e1.ypos);
  noStroke();
  fill(100,0,0);
  e1.go();
  fill(0,100,0);
  e2.go();
  stroke(0);
}

void mousePressed(){
  e1.listen();
  e2.listen();
}
