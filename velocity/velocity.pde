void setup(){
  size(16*35, 9*35, P2D);
  background(255);
}

void draw(){
  background(255);
  line(width/2,0, width/2,height); //y
  line(0,height/2, width,height/2); //x
  line(width/2,height/2, mouseX,mouseY); //vector
}

void thingy(){
  
}
