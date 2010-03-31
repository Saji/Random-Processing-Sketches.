int TN = 8; // Number of triangles in half a leaf. Lower == better frame rate.
float[][] ts = new float[TN][];
color[]tc = new color[TN];

void setup(){
  background(0);
  size(300,300,P3D);
  noStroke();
  for(int i = 0; i < TN; i++){
    ts[i] = triangle_points();
    tc[i] = color(random(255),random(255),random(255),50);
  }
}

void draw(){
  background(0);
  if(frameCount % 400 == 0) {
    for(int i = 0; i < TN; i++){
      ts[i] = triangle_points();
      tc[i] = color(random(255),random(255),random(255),50);
    }
  }
  translate(width/2, height/2);
  rotateX(sin(radians(frameCount/5)));
  rotate(radians(frameCount));
  for(int a = 0; a < 360; a += 60){
   leaf(a);
  }
}

float[] triangle_points(){
  return new float[] {
    random(0, width/2), 0,                      
    random(0, width/2), random(0, height* 1/4), 
    random(0, width/2), 0                       
  };
}

void leaf(int a){
  for(int i = 0; i < TN; i++){
    pushStyle();
    fill(tc[i]);
    pushMatrix();
    rotate(radians(a));
    triangle(ts[i][0],ts[i][1], ts[i][2],ts[i][3], ts[i][4],ts[i][5]);
    rotateX(PI);
    triangle(ts[i][0],ts[i][1], ts[i][2],ts[i][3], ts[i][4],ts[i][5]);
    popMatrix();
    popStyle();
  }
}
