void grid(float s, float us){
  float p = 0;
  for(int i = 0; i <= s; p = i += us){
    line(0, p, width, p); //x
    line(p, 0, p, height); //y
  }
}
