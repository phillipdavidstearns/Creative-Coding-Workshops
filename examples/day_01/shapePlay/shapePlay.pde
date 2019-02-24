void setup() {
  size(800, 800);
  background(255);
}

void draw() {
  
  background(255);
  
  point(400,400);
  
  arc(100,100, 50, 100, 0, PI);
  
  ellipse(100, 200, 100, 50);
  
  circle(100, 300, 75);
  
  square(25, 25, 50);
  
  rect(150, 25, 25,10);
  
  quad(300,200,300,400,500,500,500,300);
  
  line(0,800,800,0);
  
  curve(800,800,400,300,300,400,800,0);
  
}
