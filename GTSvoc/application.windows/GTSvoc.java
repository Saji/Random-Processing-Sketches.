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

public class GTSvoc extends PApplet {

String file;
int choices = 4;
public void setup(){
  size(485,300,P2D);
  frameRate(20);
  file = "Barron_GRE_word_list.wdl";
  println(dictionary.getRankedItem(103));
}

public void draw(){
  
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
int RANDOM = 0, RANKED = 1;
int ALICEBLUE = 	0xffF0F8FF,
      ANTIQUEWHITE = 	0xffFAEBD7,
      Aqua = 	0xff00FFFF,
      AQUAMARINE = 	0xff7FFFD4,
      AZURE = 	0xffF0FFFF,
      BEIGE = 	0xffF5F5DC,
      BISQUE = 	0xffFFE4C4,
      BLACK = 	0xff000000,
      BLANCHEDALMOND = 	0xffFFEBCD,
      Blue = 	0xff0000FF,
      BLUEVIOLET = 	0xff8A2BE2,
      BROWN = 	0xffA52A2A,
      BURLYWOOD = 	0xffDEB887,
      CADETBLUE = 	0xff5F9EA0,
      CHARTREUSE = 	0xff7FFF00,
      CHOCOLATE = 	0xffD2691E,
      CORAL = 	0xffFF7F50,
      CORNFLOWERBLUE = 	0xff6495ED,
      CORNSILK = 	0xffFFF8DC,
      CRIMSON = 	0xffDC143C,
      CYAN = 	0xff00FFFF,
      DARKBLUE = 	0xff00008B,
      DARKCYAN = 	0xff008B8B,
      DARKGOLDENROD = 	0xffB8860B,
      DARKGRAY = 	0xffA9A9A9,
      DARKGREEN = 	0xff006400,
      DARKKHAKI = 	0xffBDB76B,
      DARKMAGENTA = 	0xff8B008B,
      DARKOLIVEGREEN = 	0xff556B2F,
      DARKORANGE = 	0xffFF8C00,
      DARKORCHID = 	0xff9932CC,
      DARKRED = 	0xff8B0000,
      DARKSALMON = 	0xffE9967A,
      DARKSEAGREEN = 	0xff8FBC8F,
      DARKSLATEBLUE = 	0xff483D8B,
      DARKSLATEGRAY = 	0xff2F4F4F,
      DARKTURQUOISE = 	0xff00CED1,
      DARKVIOLET = 	0xff9400D3,
      DEEPPINK = 	0xffFF1493,
      DEEPSKYBLUE = 	0xff00BFFF,
      DIMGRAY = 	0xff696969,
      DODGERBLUE = 	0xff1E90FF,
      FIREBRICK = 	0xffB22222,
      FLORALWHITE = 	0xffFFFAF0,
      FORESTGREEN = 	0xff228B22,
      FUCHSIA = 	0xffFF00FF,
      GAINSBORO = 	0xffDCDCDC,
      GHOSTWHITE = 	0xffF8F8FF,
      GOLD = 	0xffFFD700,
      GOLDENROD = 	0xffDAA520,
      GRAY = 	0xff808080,
      GREEN = 	0xff008000,
      GREENYELLOW = 	0xffADFF2F,
      HONEYDEW = 	0xffF0FFF0,
      HOTPINK = 	0xffFF69B4,
      INDIANRED =  	0xffCD5C5C,
      INDIGO =  	0xff4B0082,
      IVORY = 	0xffFFFFF0,
      KHAKI = 	0xffF0E68C,
      LAVENDER = 	0xffE6E6FA,
      LAVENDERBLUSH = 	0xffFFF0F5,
      LAWNGREEN = 	0xff7CFC00,
      LEMONCHIFFON = 	0xffFFFACD,
      LIGHTBLUE = 	0xffADD8E6,
      LIGHTCORAL = 	0xffF08080,
      LIGHTCYAN = 	0xffE0FFFF,
      LIGHTGOLDENRODYELLOW = 	0xffFAFAD2,
      LIGHTGREY = 	0xffD3D3D3,
      LIGHTGREEN = 	0xff90EE90,
      LIGHTPINK = 	0xffFFB6C1,
      LIGHTSALMON = 	0xffFFA07A,
      LIGHTSEAGREEN = 	0xff20B2AA,
      LIGHTSKYBLUE = 	0xff87CEFA,
      LIGHTSLATEGRAY = 	0xff778899,
      LIGHTSTEELBLUE = 	0xffB0C4DE,
      LIGHTYELLOW = 	0xffFFFFE0,
      LIME = 	0xff00FF00,
      LIMEGREEN = 	0xff32CD32,
      LINEN = 	0xffFAF0E6,
      MAGENTA = 	0xffFF00FF,
      MAROON = 	0xff800000,
      MEDIUMAQUAMARINE = 	0xff66CDAA,
      MEDIUMBLUE = 	0xff0000CD,
      MEDIUMORCHID = 	0xffBA55D3,
      MEDIUMPURPLE = 	0xff9370D8,
      MEDIUMSEAGREEN = 	0xff3CB371,
      MEDIUMSLATEBLUE = 	0xff7B68EE,
      MEDIUMSPRINGGREEN = 	0xff00FA9A,
      MEDIUMTURQUOISE = 	0xff48D1CC,
      MEDIUMVIOLETRED = 	0xffC71585,
      MIDNIGHTBLUE = 	0xff191970,
      MINTCREAM = 	0xffF5FFFA,
      MISTYROSE = 	0xffFFE4E1,
      MOCCASIN = 	0xffFFE4B5,
      NAVAJOWHITE = 	0xffFFDEAD,
      NAVY = 	0xff000080,
      OLDLACE = 	0xffFDF5E6,
      OLIVE = 	0xff808000,
      OLIVEDRAB = 	0xff6B8E23,
      ORANGE = 	0xffFFA500,
      ORANGERED = 	0xffFF4500,
      ORCHID = 	0xffDA70D6,
      PALEGOLDENROD = 	0xffEEE8AA,
      PALEGREEN = 	0xff98FB98,
      PALETURQUOISE = 	0xffAFEEEE,
      PALEVIOLETRED = 	0xffD87093,
      PAPAYAWHIP = 	0xffFFEFD5,
      PEACHPUFF = 	0xffFFDAB9,
      PERU = 	0xffCD853F,
      PINK = 	0xffFFC0CB,
      PLUM = 	0xffDDA0DD,
      POWDERBLUE = 	0xffB0E0E6,
      PURPLE = 	0xff800080,
      RED = 	0xffFF0000,
      ROSYBROWN = 	0xffBC8F8F,
      ROYALBLUE = 	0xff4169E1,
      SADDLEBROWN = 	0xff8B4513,
      SALMON = 	0xffFA8072,
      SANDYBROWN = 	0xffF4A460,
      SEAGREEN = 	0xff2E8B57,
      SEASHELL = 	0xffFFF5EE,
      SIENNA = 	0xffA0522D,
      SILVER = 	0xffC0C0C0,
      SKYBLUE = 	0xff87CEEB,
      SLATEBLUE = 	0xff6A5ACD,
      SLATEGRAY = 	0xff708090,
      SNOW = 	0xffFFFAFA,
      SPRINGGREEN = 	0xff00FF7F,
      STEELBLUE = 	0xff4682B4,
      TAN = 	0xffD2B48C,
      TEAL = 	0xff008080,
      THISTLE = 	0xffD8BFD8,
      TOMATO = 	0xffFF6347,
      TURQUOISE = 	0xff40E0D0,
      VIOLET = 	0xffEE82EE,
      WHEAT = 	0xffF5DEB3,
      WHITE = 	0xffFFFFFF,
      WHITESMOKE = 	0xffF5F5F5,
      YELLOW = 	0xffFFFF00,
      YELLOWGREEN = 	0xff9ACD32;

class Dictionary{
  HashMap[] dict;
  int length = 0;
  public String[] parseDef(String def){
    String[] defSplit = splitTokens(def);
    return new String[] {
      defSplit[0],                    //word
      join(subset(defSplit, 1), " ")  //meaning
    };
  }
  public void updatePriority(){
    for(int i=0; i<length; i++){
      if(i==0){
        dict[i].put("cumulative", dict[i].get("priority"));
      } else {
        int p = (int) (Integer) dict[i].get("priority");
        int pc = (int) (Integer) dict[i-1].get("cumulative");
        dict[i].put("cumulative", p+pc);
      }
    }
  }
  public void incByPriority(int n, int inc){
    int p = (int) (Integer) dict[n].get("priority");
    if(inc < 0 && p == 1) return;
    dict[n].put("priority", p+inc);
    updatePriority();
  }
  public void incPriority(int n){ incByPriority(n, 1); }
  public void decPriority(int n){ incByPriority(n, -1); }
  public HashMap getRandomItem(){ return dict[round(random(length))]; }
  public HashMap getRankedItemFunc(HashMap[] items, int cumProp){ //cumProp ranges from 0 to cumProp of last item.
    if(items.length == 1) {
      return items[0];
    }else{
      int splitAt = ceil(items.length/2);
      HashMap[] left = (HashMap[]) subset(items, 0, splitAt);
      HashMap[] right = (HashMap[]) subset(items, splitAt);
      if(cumProp < (int) (Integer) left[left.length-1].get("cumulative")){
        return getRankedItemFunc(left, cumProp);
      }else{
        return getRankedItemFunc(right, cumProp);
      }
    }
  }
  public HashMap getRankedItem(int cumProp){
    return getRankedItemFunc(dict, cumProp-1);
  }
  Dictionary(String file){
    String lines[] = loadStrings(file);
    HashMap dictItem = new HashMap();
    String[] dictI;
    length = lines.length;
    dict = new HashMap[length];
    for(int i = 0; i < length; i++, dictItem = new HashMap()){
      dictI = parseDef(lines[i]);
      dictItem.put("line", lines[i]);
      dictItem.put("word", dictI[0]);
      dictItem.put("defn", dictI[1]);
      dictItem.put("priority", 1);
      dictItem.put("cumulative", i+1);
      dict[i] = dictItem;
    }
  }
}
class Element{
  int NO = -2;
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
  int rectStroke = NO,
        textFill = BLACK,
        onMouseFill = NO,
        rectFill = NO,
        hoverFill = NO;
  PFont dejavu = loadFont("DejaVuSansCondensed-14.vlw"),
        dejavuBold = loadFont("DejaVuSansCondensed-Bold-14.vlw");
  public void go(){
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
  public boolean mouseOver(){
    boolean ret = false;
    if (((mouseX >= x) && (mouseX <= x+w)) &&
        ((mouseY >= y) && (mouseY <= y+h))) {
      ret = true;
    }
    return ret;
  }
  public boolean mouseOn(){
    return reactivity && mousePressed && mouseOver() ? true : false;
  }
  public void initColors(int rf,int hf,int omf,int tf){
    rectFill = rf; hoverFill = hf; onMouseFill = omf;
    textFill = tf; txt = t;
  }
  public void initPos(float xi, float yi, float wi, float hi){
    x=xi;y=yi;w=wi;h=hi;
  }
  Element(){}
}
}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#DFDFDF", "GTSvoc" });
  }
}
