float x;
float y;
float size;

color fillColor = #b7c1d9;
color strokeColor = color(127);
color backgroundColor = color(225, 201, 255);

void setup(){
  
  size(250, 250);
  
  x = width/2;
  y = height/2;
  size = 50;
  
  background(backgroundColor);
}

void draw(){
  
  background(backgroundColor);
  

  //stroke(strokeColor);
  //fill(fillColor);
  
  ellipse(x, y, size, size);
  

  stroke(#FF0000);
  fill(#00FF00);
  
  ellipse(x*1.5, y*1.5, size, size);
}
