int n = 26; //even number of nodes
ArrayList points = new ArrayList(); //x,y represents coordinate (point defined by 2 co-ords)
ArrayList edges = new ArrayList();  //x,y represents point names (edge defined by 2 points)
void setup(){
  size(300,300);
  background(255);
  smooth();
  //(1) make points around a circumference and store them.
  translate(width/2, height/2);
  for(float i = 0, a = 360 / n, ia = a;
            i < n;
            i++, a += ia){
    PVector tmp_p = new PVector(sin(radians(a)) * width/3, cos(radians(a)) * height/3);
    points.add(tmp_p);
    pushStyle();
    fill(255,0,0);
    ellipse(tmp_p.x,tmp_p.y,  10,10);
    popStyle();
  }

  //(2) generate edges using the formula.
  //    (a) all the outlying edges minus the one connecting the last and first.
  for(float i = 0; i <= n-2; i++){
    edges.add(new PVector(i, i+1));
  }
  //    (b) the last and the first.
  edges.add(new PVector(n-1,0));
  //    (c) connects opposite nodes.
  for(float i = 0; i <= n/2 - 1; i++){
    edges.add(new PVector(i, i+n/2));
  }

  //(3) lookup points for each vertex of the edge and connecting lines
  for(int i = 0; i < edges.size(); i++){
    PVector edge = (PVector) edges.get(i);
    drawLine((PVector) points.get((int) edge.x), (PVector) points.get((int) edge.y));
  }
}

void drawLine(PVector p1, PVector p2){
  line(p1.x,p1.y, p2.x,p2.y);
}
