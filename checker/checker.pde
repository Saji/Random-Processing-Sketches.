float usize, us = 8;
int foo = 2;
void setup(){
  size(400,400,P2D);
  usize = width / us;

  {
    int ucol = 0;
    for(float x = usize; x <= width; x += usize){
      for(float y = usize; y <= width; y += usize){
        pushStyle();
        fill(ucol);
        rect(x,y, -usize,-usize);
        if(x % (2 * usize) == 0 && y % (2 * usize) == 0 && x > usize && y > usize){
          pushStyle();
          fill(0,0);
          strokeWeight(2);
          stroke(255, 110, 0);
          rect(x,y, -2*usize,-2*usize);
          popStyle();
        }
        popStyle();
        ucol = ucol == 0 ? 255 : 0;
      }
      ucol = ucol == 0 ? 255 : 0;
    }
  }
}

