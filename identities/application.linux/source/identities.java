import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.*; 
import java.awt.image.*; 
import java.awt.event.*; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class identities extends PApplet {

int s = 400, u = 20, us = s / u, e = 10; //size, unit nos, unit size, ellipse size.
Draggable e1 = new Draggable(us * 3, us * 5, e, us);
Draggable e2 = new Draggable(us * 5, us * 3, e, us);
Rct r1 = new Rct(0,e1.ypos, e1.xpos,e1.ypos, e1.xpos,s, 0,s);
Rct r2 = new Rct(0,e2.ypos, e1.xpos,e2.ypos, e1.xpos,e1.ypos, 0,e1.ypos);
Rct r3 = new Rct(e1.xpos,e1.ypos, e2.xpos,e1.ypos, e2.xpos,s, e1.xpos,s);
Rct r4 = new Rct(e1.xpos,e2.ypos, e2.xpos,e2.ypos, e2.xpos,e1.ypos, e1.xpos,e1.ypos);

public void setup(){
  size(s,s,P2D);
}

public void draw(){
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

public void mousePressed(){
  e1.listen();
  e2.listen();
}
class Draggable {
  float xpos, ypos, sze, cnst = 0; 
  boolean draggable = false;
  Draggable (float x, float y, float s) {
    xpos = x; ypos = y; sze = s;
  }
  Draggable (float x, float y, float s, float c) { //constrained
    xpos = x; ypos = y; sze = s; cnst = c;
  }
  public void go() {
    float csegx, csegxr, csegy, csegyr;
    ellipse(xpos, ypos, sze, sze);
    if (mousePressed && draggable && cnst == 0) {
      xpos = mouseX; ypos = mouseY;
    } else if (mousePressed && draggable && cnst > 0) {
      csegx = mouseX % cnst;
      csegxr = round(mouseX % cnst / cnst);
      csegy = mouseY % cnst;
      csegyr = round(mouseY % cnst / cnst);
      if (csegxr > 0) {
        xpos = mouseX - csegx + cnst;
      } else {
        xpos = mouseX - csegx;
      }
      if (csegyr > 0) {
        ypos = mouseY - csegy + cnst;
      } else {
        ypos = mouseY - csegy;
      }
    } else {
        draggable = false;
    }
  }
  public void listen(){
    if(mouseX > (xpos - 0.5f * sze) &&
       mouseX < (xpos + 0.5f * sze) &&
       mouseY > (ypos - 0.5f * sze) &&
       mouseY < (ypos + 0.5f * sze)) {
      draggable = true;
    }
  }
}
public void grid(float s, float us){
  float p = 0;
  for(int i = 0; i <= s; p = i += us){
    line(0, p, width, p); //x
    line(p, 0, p, height); //y
  }
}
class Rct {
  float x1, y1, x2, y2, x3, y3, x4, y4;
  Rct () {}
  Rct (float xa, float ya,  
       float xb, float yb,
       float xc, float yc,
       float xd, float yd){
    x1 = xa; y1 = ya;
    x2 = xb; y2 = yb;
    x3 = xc; y3 = yc;
    x4 = xd; y4 = yd;
  }
  public void go(){
    quad(x1, y1, x2, y2, x3, y3, x4, y4);
  }
  public void moveVertex(int v, float vx, float vy){
    switch(v){
      case 1:
        x1 = vx; y1 = vy;
        y2 = vy;
        x4 = vx;
        break;
      case 2:
        x2 = vx; y2 = vy;
        y1 = vy;
        x3 = vx;
        break;
      case 3:
        x3 = vx; y3 = vy;
        y4 = vy;
        x2 = vx;
        break;
      case 4:
        x4 = vx; y4 = vy;
        y3 = vy;
        x1 = vx;
        break;
      default:
        println("moveVertex doesn't understand the '" + v + "' argument.");
        exit();
    }
  }
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#DFDFDF", "identities" });
  }
}
