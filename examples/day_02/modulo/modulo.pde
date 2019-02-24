int i = 0;

void setup(){
  noLoop();
}

void draw(){
  println(i);
  i++;
  i %= 10;
}

void keyPressed(){
  redraw();
}
