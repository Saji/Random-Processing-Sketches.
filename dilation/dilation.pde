int f = 1;
void setup(){
  size(400,400,P3D);
  strokeWeight(2);
  stroke(255,0,0);
}

void draw(){
  float f = (mouseX-width/2)/50.0;
  background(255);
  translate(width/2, height/2);
  for(int i = -width/16; i < width/16; i += 2){
    for(int j = -height/16; j < height/16; j += 2){
      if(i*j % 5 == 0){
        stroke(255,0,0);
      }else{
        stroke(0,0,0);
      }
      point(i*f, j*f);
    }
  }
}
