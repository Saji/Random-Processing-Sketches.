class Draggable {
  float xpos, ypos, sze, cnst = 0; 
  boolean draggable = false;
  Draggable (float x, float y, float s) {
    xpos = x; ypos = y; sze = s;
  }
  Draggable (float x, float y, float s, float c) { //constrained
    xpos = x; ypos = y; sze = s; cnst = c;
  }
  void go() {
    float csegx, csegxr, csegy, csegyr;
    ellipse(xpos, ypos, sze, sze);
    if (mousePressed && draggable && cnst == 0) {
      xpos = mouseX; ypos = mouseY;
    } else if (mousePressed && draggable && cnst > 0) {
      csegx = mouseX % cnst;
      csegxr = round(mouseX % cnst / cnst);
      csegy = mouseY % cnst;
      csegyr = round(mouseY % cnst / cnst);
      if (csegxr > 0) {
        xpos = mouseX - csegx + cnst;
      } else {
        xpos = mouseX - csegx;
      }
      if (csegyr > 0) {
        ypos = mouseY - csegy + cnst;
      } else {
        ypos = mouseY - csegy;
      }
    } else {
        draggable = false;
    }
  }
  void listen(){
    if(mouseX > (xpos - 0.5 * sze) &&
       mouseX < (xpos + 0.5 * sze) &&
       mouseY > (ypos - 0.5 * sze) &&
       mouseY < (ypos + 0.5 * sze)) {
      draggable = true;
    }
  }
}
