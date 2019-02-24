float x1;
float x2;
float y1;
float y2;

float centerX;
float centerY;

float lineWeight = 0.5;

color strokeColor = #001b53;
color backgroundColor = color(201, 225, 255);

void setup() {
  size(250, 250);

  // first point of our line
  x1 = width/4;
  y1 = height/2;

  // second point of our line
  x2 = 3*width/4;
  y2 = height/2;
  
  centerX=random(width);
  centerY=random(height);

  print(x2);

  background(backgroundColor);
}

void draw() {

  x1=mouseX;
  y1=mouseY;

  x2=2*centerX-mouseX;
  y2=2*centerY-mouseY;

  //background(backgroundColor);

  stroke(strokeColor);
  strokeWeight(lineWeight);

  line(x1, y1, x2, y2);
}

void mouseReleased(){
  centerX=mouseX;
  centerY=mouseY;
  strokeColor=color(0, 0, random(256));
}
