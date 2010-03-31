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

public class serpinski extends PApplet {

public void setup(){
  size(300,300,P2D);
  background(255);
  drawSerpinski(width/2, 30, 24, 10);
}

public void drawSerpinski(int x, int y, int d, int s){
  BinCoef o = new BinCoef();
  for(int row = 1; row <= d; row++, y += s){
    for(int pos = 1, u_x = x - row*s / 2; pos <= row; u_x += s, pos++){
      if(o.v(row,pos) % 2 == 0){
        fill(0);
      }else{
        fill(255,0,0);
      }
      rect(u_x,y,s,s);
    }
  }
}

class BinCoef { //sloooooow non-optimized recursive O(n) = n!
 BinCoef(){}
 public int v(int row, int pos){
  if(row < 1 || pos < 1 || pos > row){ //zero
    return 0;
  }else if(row == 1 || pos == 1 || pos == row){ //one
    return 1;
  }else{ //else
    return this.v(row - 1, pos - 1) + this.v(row - 1, pos);
  }
 }
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#DFDFDF", "serpinski" });
  }
}
