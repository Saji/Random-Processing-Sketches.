class Dictionary{
  String delimiter = "8==D";
  HashMap[] dict;
  int length = 0;
  String[] parseDef(String def){
    String[] defSplit = split(def, delimiter);
    String[] ret = new String[] {
      defSplit[0],   //word
      defSplit[1],   //meaning
      defSplit[2],   //priority
      defSplit[3]    //cumulative
    };
    ret = trim(ret);
    return ret;
  }
  void updatePriority(){
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
  void incByPriority(int n, int inc){
    int p = (int) (Integer) dict[n].get("priority");
    if(inc < 0 && p == 1) return;
    dict[n].put("priority", p+inc);
    updatePriority();
  }
  void incPriority(int n){ incByPriority(n, 1); }
  void decPriority(int n){ incByPriority(n, -1); }
  HashMap getRandomItem(){ return dict[round(random(length-1))]; }
  HashMap getRankedItemFunc(HashMap[] items, int cumProp){ //cumProp ranges from 0 to cumProp of last item.
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
  HashMap getRankedItem(int cumProp){
    return getRankedItemFunc(dict, cumProp-1);
  }
  void save(){
    String[] defs = new String[length];
    String def;
    for(int i=0; i<dict.length; i++){
      def = join(new String[]{ (String) dict[i].get("word"),
                               (String) dict[i].get("defn"),
                               dict[i].get("priority") + "",
                               dict[i].get("cumulative") + ""}, delimiter);
      defs[i] = def;
    }
    saveStrings("save.txt", defs);
//    for(int i = 0; i<length; i++){
//      println(defs[i]);
//    }
  }
  Dictionary(String file){
    String lines[] = loadStrings(file);
    HashMap dictItem = new HashMap();
    String[] dictI;
    length = lines.length;
    dict = new HashMap[length];
    for(int i = 0; i < length; i++, dictItem = new HashMap()){
      dictI = parseDef(lines[i]);
      dictItem.put("word", dictI[0]);
      dictItem.put("defn", dictI[1]);
      dictItem.put("priority", parseInt(dictI[2]));
      dictItem.put("cumulative", parseInt(dictI[3]));
      dict[i] = dictItem;
    }
    save();
  }
}
