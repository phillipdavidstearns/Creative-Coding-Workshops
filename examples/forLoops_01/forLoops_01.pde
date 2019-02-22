// we'll use variables instead of hard coding things
float squareSpacing;
float rowX;
float rowY;
float squareWidth = 50;
float qty_squares = 5;

void setup() {
  
  size(500, 500);
  background(255);
  
  squareSpacing = width / (qty_squares + 1);
  rowX = squareSpacing;
  rowY = height / 2;
  
}

void draw() {
  
  background(255);
  
  // by default the rect and square dsraw from their upper right
  // drawing from center can help simplify things for us
  rectMode(CENTER);
  
  for (int i = 0; i < qty_squares; i++) {
    square(rowX + (i * squareSpacing), rowY, squareWidth);
  }
  
}
