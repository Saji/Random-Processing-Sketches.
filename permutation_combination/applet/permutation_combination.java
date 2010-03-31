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

public class permutation_combination extends PApplet {

/*
  Permutations and combinations.
  Taking 3 (visualized as dimensions) from 7 (length of side).
  by Saji, (raju.saji@gmail.com).
  License: Public domain. Attribution requested.
  
  KEY:
  Permutation: (order matters).
   Repeating (Sequence): All (little cubies). eg: Passwords.
   Non-repeating (Arrangement): All except the reds. (ie transparent + blues). eg: Number of ways of podium finishes in a race.
  Combination: Selection (order doesn't matter).
   Repeating: Cubies with white outline. eg Number of n scoop icecream serving from a set of flavours.
   Non-repeating (Subset combination): The blues. eg: Number of ways to choose n member committies from a group.
*/

float csize = 20, from = 7, startPos = -(csize * from/2),
      spaceW = csize * from, bxspRat = 1.0f/3.0f;
ArrayList saw = new ArrayList();

public void setup(){
  size(300,300,P3D);
  strokeWeight(2);
  noStroke();
}

public void draw(){
  float[] see = null;
  background(0);
  translate(width/2, height/2);
  ambientLight(60,60,60);
  directionalLight(255,255,255, 0,1,0);
  pointLight(100,100,100, width*(3.0f/4.0f),height*(3.0f/4.0f),400);
  rotateY(radians(mouseX));
  rotateX(radians(mouseY));
  translate(startPos, startPos, startPos);
  for(int x = 0; x < spaceW; x += csize){
    for(int y = 0; y < spaceW; y += csize){
      for(int z = 0; z < spaceW; z += csize){
        see = new float[] {x, y, z};
        pushMatrix();
        translate(x,y,z);
        pushStyle();
        if(!seen(see)){
          saw.add(see);
          stroke(255);
          fill(0,0,255);
        }else{
          fill(255,70);
        }
        if(x == y || y == z || z == x){
          fill(255,0,0);
        }
        box(csize-(csize * bxspRat));
        popStyle();
        popMatrix();
      }
    }
  }
  saw = new ArrayList();
}

public boolean seen(float[] asee){
  int l = saw.size();
  float[] asaw;
  asee = sort(asee);
  boolean ret = false;
  for(int i = 0; i < l; i++){
    asaw = sort((float[])saw.get(i));
    if(asee[0] == asaw[0] && asee[1] == asaw[1] && asee[2] == asaw[2]){
      ret = true;
      break;
    }
  }
  return ret;
}

  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#DFDFDF", "permutation_combination" });
  }
}
