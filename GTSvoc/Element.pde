class Element{
  color NO = -2;
  float x,y,w,h;
  int id;
  boolean clicked = false;
  String txt = "";
  HashMap data = new HashMap();
  boolean strokeVisibility = true,
          elementVisibility = true,
          textVisibility = true,
          reactivity = true,
          textBold = false;
  color rectStroke = NO,
        textFill = BLACK,
        onMouseFill = NO,
        rectFill = NO,
        hoverFill = NO;
  PFont dejavu = loadFont("DejaVuSansCondensed-10.vlw"),
        dejavuBold = loadFont("DejaVuSansCondensed-Bold-14.vlw");
  void go(){
    pushStyle();
    if(elementVisibility){
      if(!strokeVisibility) noStroke();
        else if(rectStroke != NO) stroke(rectStroke);
      if(rectFill != NO) fill(rectFill);
      if(hoverFill != NO && mouseOver()) fill(hoverFill);
      if(onMouseFill != NO && mouseOn()) fill(onMouseFill);
      rect(x,y,w,h);
      if(textVisibility){
        pushStyle();
        float centerX = x + w/2,
              centerY = y + h/2;
        textMode(SCREEN);
        textAlign(CENTER,CENTER);
        noStroke();
        fill(textFill);
        if(textBold) textFont(dejavuBold);
          else textFont(dejavu);
        text(txt, centerX, centerY);
        popStyle();
      }
    }
    popStyle();
  }
  boolean mouseOver(){
    boolean ret = false;
    if (((mouseX >= x) && (mouseX <= x+w)) &&
        ((mouseY >= y) && (mouseY <= y+h))) {
      ret = true;
    }
    return ret;
  }
  boolean mouseOn(){
    return reactivity && mousePressed && mouseOver() ? true : false;
  }
  void initColors(color rf,color hf,color omf,color tf){
    rectFill = rf; hoverFill = hf; onMouseFill = omf;
    textFill = tf;
  }
  void initPos(float xi, float yi, float wi, float hi){
    x=xi;y=yi;w=wi;h=hi;
  }
  Element(){}
}
