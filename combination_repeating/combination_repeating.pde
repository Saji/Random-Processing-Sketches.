import processing.opengl.*;
float csize = 25, dim = 5, startPos = -(csize * dim/2),
      spaceW = csize * dim, ruo = 0;
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
        if( !seen(see) ){
          saw.add(see);
          if (frameCount == 1){
            ruo += 1;
          }
          stroke(0);
          fill(0,200,0);
        } else {
          fill(200,0,0,50);
        }
        box(csize);
        popStyle();
        popMatrix();
      }
    }
  }
  saw = new ArrayList();
}

void mousePressed(){
  println("Repeating, unordered: " + ruo);
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
    
