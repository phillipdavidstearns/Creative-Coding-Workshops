String[] someWords = { "Hello!" };

void setup() {
  noLoop();
}

void draw() {
  //println(someWords[0]);
  println(someWords[0]);
  someWords=someWords[0].split("!"); 
  someWords[0]+=" World!";
  println(someWords[0]);
}
