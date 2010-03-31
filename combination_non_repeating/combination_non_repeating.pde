/*
  To do: Wrong comments.
  By Saji (raju.saji@gmail.com).
  
  Order matters: Permutation. (Arrangement).
    With repetition: The cube.
    Without repetition: The cube minus the reds. (blues + greens).
  Order doesn't matter: Combination. (Selection)
    Without repetition: The greens.
*/
import processing.opengl.*;
float csize = 15, dim = 8, startPos = -(csize * dim/2),
      spaceW = csize * dim, nonRepeating = 0, orderLess = 0;
ArrayList saw = new ArrayList();

void setup(){
  size(400,400,P3D);
  noStroke();
}

void draw(){
  float[] see = null;
  background(0);
  translate(width/2, height/2);
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
        if(x == y || y == z || z == x){
          fill(#7C0205);
        } else if( seen(see) ) {
          fill(255, 30);
          nonRepeating += 1;
        } else {
          saw.add(see);
          fill(2,255,232,30);
          nonRepeating += 1;
          orderLess += 1;
        }
        box(csize);
        popStyle();
        popMatrix();
      }
    }
  }
  saw = new ArrayList();
  //println("Non repeating: " + nonRepeating);
  //println("Non repeating, orderless: " + orderLess);
  nonRepeating = 0;
  orderLess = 0;
}

boolean seen(float[] asee){
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
    
