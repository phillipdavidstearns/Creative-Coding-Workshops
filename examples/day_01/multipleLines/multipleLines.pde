float x1;
float x2;
float y1;
float y2;

float x_step;
float y_step;

float stepDenom=120;

float lineWeight = 0.5;

color strokeColor = #001b53;
color backgroundColor = color(201, 225, 255);

void setup() {

  size(500, 250);

  // first point of our line
  x1 = 0;
  y1 = 0;

  // second point of our line
  x2 = 0;
  y2 = height;

  x_step = width/stepDenom;
  y_step = height/stepDenom;


  background(backgroundColor);

  //frameRate(5);
}

void draw() {

  //background(backgroundColor);

  //fill(0);
  //text("frameRate: "+frameRate, 40,40);

  x1 += x_step;
  x2 += x_step;
  y1 += y_step;
  y2 -= y_step;
  
  stepDenom+=10;
  stepDenom=(stepDenom%1000)+100;
  
  x_step = width/stepDenom;
  y_step = height/stepDenom;

  stroke(strokeColor);
  strokeWeight(lineWeight);

  line(x1, y1, x2, y2);
}
