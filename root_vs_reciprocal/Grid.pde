class Grid {
  float xpos, ypos, wdth, hght, xspace, yspace;
  String method = "";
  Grid (float x, float y, float w, float h, float xys, String m) {
    if (m == "x" || m == "X") {
      xpos = x; ypos = y; wdth = w; hght = h; xspace = xys; method = "x";
    } else if (m == "y" || m == "Y"){
      xpos = x; ypos = y; wdth = w; hght = h; yspace = xys; method = "y";
    } else {
      println("Grid doesn't know the \"" + m + "\" drawing method. Try \"x\" or \"y\".");
      exit();
    }
  }
  Grid (float x, float y, float w, float h, float xs, float ys) {
    /*
      x,y - top-left
      w,h - width, height
      xs,ys - space between lines of along x and y
    */
    xpos = x; ypos = y; wdth = w; hght = h; xspace = xs; yspace = ys;
    method = "xy";
  }
  void go(){
    if (method == "x" || method == "xy") {
      for (float x = xpos; x <= xpos + wdth; x += xspace){ // lines along x
        line(x, ypos, x, ypos + hght);
      }
    }
    if (method == "y" || method == "xy") {
      for (float y = ypos; y <= ypos + hght; y += yspace){ // lines along y
        line(xpos, y, xpos + wdth, y);
      }
    }
  } 
}
