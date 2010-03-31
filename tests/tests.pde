Dictionary dic;
void setup(){
  dic = new Dictionary("gre.wdl");
  println(dic.dict[10].get("cumulative"));
  dic.incPriority(9);
  println(dic.dict[10].get("cumulative"));
}
