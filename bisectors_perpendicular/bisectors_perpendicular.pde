float angle = 90;
void setup(){
  size(200, 200, P3D);
}

void draw(){
  background(255);
  if (keyPressed == true){
    if (keyCode == 38) angle++;
    if (keyCode == 40) angle--;
  }
  translate(width/2, height/2);
  stroke(0);
  line(-width/3, 0, width/3, 0);
  rotate(radians(angle/2));
  stroke(200,0,0);
  line(-width/3, 0, width/3, 0);
  pushMatrix();
  rotate(radians(angle/2));
  stroke(0);
  line(-width/3, 0, width/3, 0);
  popMatrix();
  rotate(radians(90));
  stroke(200,0,0);
  line(-width/3, 0, width/3, 0);
}
