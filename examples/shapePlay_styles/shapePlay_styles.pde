// example demonstrating basic 2D primitives in processing

void setup() {
  size(800, 800);
  background(255);
}

void draw() {

  background(#b8f7d9);
  
  // style point
  stroke(#1d8bef);
  strokeWeight(5);
  //draw point
  point(400, 400);
  
  // style arc
  stroke(#1b8de4);
  strokeWeight(1);
  fill(#9d3f5a);
  // draw arc
  arc(100, 100, 50, 100, 0, PI);
  
  // style ellipse
  noStroke();
  fill(#b209f4);
  // draw ellipse
  ellipse(100, 200, 100, 50);
  
  // style circle
  stroke(#001bef);
  strokeWeight(0);
  fill(#03f6a7);
  // draw circle
  circle(100, 300, 75);
 
  // style square
  stroke(#db0903);
  strokeWeight(0.5);
  noFill();
  // draw square
  square(25, 25, 50);
  
  // style rectangle
  stroke(#1bef32);
  strokeWeight(1.5);
  fill(#0903f4);
  // draw rectangle
  rect(150, 25, 25, 10);

  // style quadrilateral
  stroke(#1d7830);
  strokeWeight(2);
  fill(#ab7348);
  // draw quadrilateral
  quad(300, 200, 300, 400, 500, 500, 500, 300);
  
  // style triangle
  stroke(#1df8be);
  strokeWeight(5);
  fill(#b9f204);
  // dsraw triangle
  triangle(350, 250, 300, 340, 400, 50);
  
  // style line
  stroke(#def8b1);
  strokeWeight(5);
  fill(#9f42b0);
  // draw line
  line(0, 800, 800, 0);
  
  // style curve
  stroke(#1e8b9f);
  strokeWeight(25);
  noFill();
  // draw curve
  curve(800, 800, 400, 300, 300, 400, 800, 0);
  
}
