Element e1;
void setup(){
  size(300,200,P2D);
  e1 = new Element(20,20,50,20);
  e1.init(TAN,CORAL,CRIMSON,ROYALBLUE,"test");
}

void draw(){
  e1.go();
}
