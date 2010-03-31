class Rct {
  float x1, y1, x2, y2, x3, y3, x4, y4;
  Rct () {}
  Rct (float xa, float ya,  
       float xb, float yb,
       float xc, float yc,
       float xd, float yd){
    x1 = xa; y1 = ya;
    x2 = xb; y2 = yb;
    x3 = xc; y3 = yc;
    x4 = xd; y4 = yd;
  }
  void go(){
    quad(x1, y1, x2, y2, x3, y3, x4, y4);
  }
  void moveVertex(int v, float vx, float vy){
    switch(v){
      case 1:
        x1 = vx; y1 = vy;
        y2 = vy;
        x4 = vx;
        break;
      case 2:
        x2 = vx; y2 = vy;
        y1 = vy;
        x3 = vx;
        break;
      case 3:
        x3 = vx; y3 = vy;
        y4 = vy;
        x2 = vx;
        break;
      case 4:
        x4 = vx; y4 = vy;
        y3 = vy;
        x1 = vx;
        break;
      default:
        println("moveVertex doesn't understand the '" + v + "' argument.");
        exit();
    }
  }
}
