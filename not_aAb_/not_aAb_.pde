boolean a,b;
int S = 100;
void setup(){
  size(400,200,P2D);
  a = b = false;
}

void draw(){
  drawps();
}

void drawps(){
  if(a){
    fill(0,255,0);
    rect(0,0,width/2,height);
  }else{
    fill(255,0,0);
    rect(0,0,width/2,height);
  }
  if(b){
    fill(0,255,0);
    rect(width/2,0,width,height);
  }else{
    fill(255,0,0);
    rect(width/2,0,width,height);
  }
}

boolean allow(boolean a, boolean b){
  if (!(a && b)) {
    return true;
  } else {
    return false;
  }
}

void mouseClicked(){
  boolean ta = a, tb = b;
  if(mouseX < width/2){
    ta = ta?false:true;
  } else {
    tb = tb?false:true;
  }
  if(allow(ta,tb)){
    a = ta; b = tb;
  }
}
