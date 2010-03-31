String file;
int choices = 6;
UI app;
void setup(){
  size(485*2,300*2,P2D);
  frameRate(20);
  file = "gre.wdl";
  app = new UI(TAN,BISQUE,ORANGE,CRIMSON,
               PINK,YELLOW,ORANGE,CRIMSON,
               400*2,30*2,3,40*2,40*2,choices);
}

void draw(){
  background(ROYALBLUE);
  app.go();
}

//java.io.File folder = new java.io.File(dataPath(""));
//
//java.io.FilenameFilter wdlFilter = new java.io.FilenameFilter() {
//  boolean accept(File dir, String name) {
//    return name.toLowerCase().endsWith(".wdl");
//  }
//};
//
//String[] filenames = folder.list(wdlFilter);
//
//for (int i = 0; i < filenames.length; i++) println(filenames[i]);
