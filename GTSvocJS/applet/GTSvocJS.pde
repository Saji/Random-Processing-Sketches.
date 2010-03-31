void setup(){
  println("test");
}

String openJSON(String file){
  String[] lines = loadStrings(file);
  String JSON = join(lines, "\n");
  return JSON;
}

void saveJSON(String JSON, String file){
  String[] lines = split(file, "\n");
  saveStrings(file, lines);
}


