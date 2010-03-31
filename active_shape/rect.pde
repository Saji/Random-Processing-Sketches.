class Rect {
  float x,y,w,h;
  boolean visible = true, react = true,
          mouse = false;
  void go(){
    if(visible) rect(x,y,w,h);
    mouse = react && mousePressed && in() ? true : false;
  }
  boolean in(){
    boolean ret = false;
    if (((mouseX >= x) && (mouseX <= x+w)) &&
        ((mouseY >= y) && (mouseY <= y+h))) {
      ret = true;
    }
    return ret;
  }
  Rect (float xi, float yi, float wi, float hi){
    x=xi;y=yi;w=wi;h=hi;
  }
}
