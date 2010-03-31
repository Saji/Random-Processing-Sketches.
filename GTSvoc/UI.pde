class UI{
  color rfq,hfq,omfq,tfq,rfa,hfa,omfa,tfa;
  int ew,eh,es,x,y,c; //c (choices)
  Dictionary dic = new Dictionary(file);

  Element[] QA; 
  void populateQA(){
    QA = new Element[c+1];
    HashMap rItem = dic.getRandomItem();
    for(int QAi=0; QAi<c+1; QAi++){
      if(QAi==0){ //get and put randomItem, style, put txt
        QA[QAi] = new Element();
        QA[QAi].initColors(rfq,hfq,omfq,tfq);
        QA[QAi].textBold = true;
        QA[QAi].data = rItem;
        QA[QAi].txt = (String) rItem.get("word");
      }else if(QAi==1){ //get and put the same randomItem, style, put txt
        QA[QAi] = new Element();
        QA[QAi].initColors(rfa,hfa,omfa,tfa);
        QA[QAi].data = rItem;
        QA[QAi].txt = (String) rItem.get("defn");
      }else{ //get and put each new randomItem, style, put txt
        QA[QAi] = new Element();
        QA[QAi].initColors(rfa,hfa,omfa,tfa);
        QA[QAi].data = dic.getRandomItem();
        QA[QAi].txt = (String) QA[QAi].data.get("defn");
      }
    }
  }
  
  void go(){
    int cy = y, inc = eh + es;
    for(int QAi=0; QAi<c+1; QAi++, cy+=inc){
      QA[QAi].initPos(x,cy,ew,eh);
      QA[QAi].go();
      if(QAi != 0 && QA[QAi].mouseOn()){
        println(QA[QAi].data.get("word") == QA[0].data.get("word"));
      }
    }
  }
  
  UI(color rfq, color hfq, color omfq, color tfq,
     color rfa, color hfa, color omfa, color tfa,
     int ew, int eh, int es, int x, int y, int c){
    this.rfq=rfq; this.hfq=hfq; this.omfq=omfq; this.tfq=tfq;
    this.rfa=rfa; this.hfa=hfa; this.omfa=omfa; this.tfa=tfa;
    this.ew=ew; this.eh=eh; this.es=es; this.x=x; this.y=y; this.c=c;
    
    populateQA();
  }
}
