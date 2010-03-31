import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.*; 
import java.awt.image.*; 
import java.awt.event.*; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class GTSvocJS extends PApplet {

public void setup(){
  println("test");
}

public String openJSON(String file){
  String[] lines = loadStrings(file);
  String JSON = join(lines, "\n");
  return JSON;
}

public void saveJSON(String JSON, String file){
  String[] lines = split(file, "\n");
  saveStrings(file, lines);
}



  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#DFDFDF", "GTSvocJS" });
  }
}
