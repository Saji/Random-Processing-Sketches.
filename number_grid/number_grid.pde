/*
  FIXME:
  Get a place value from a number.
  Possible solutions: Convert to -> string -> split to array then get.
                      Problem: Don't know to split.
*/
Grid g1;
float x = 3.6782;
void setup(){
  size(400,400);
  background(255);
  g1 = new Grid(0,0, width,height, 25,25);
  g1.go();
  println(split("foobar", ''));
}
