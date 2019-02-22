// we'll use variables instead of hard coding things

// spacing between squares
float squareSpacing;

// where to start drawing the row of squares
float rowX;
float rowY;

// the width of our squares
float squareWidth = 50;
// how many
float qty_squares = 25;

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
    // each time the for loop executes, a square is drawn
    square(rowX + (i * squareSpacing), rowY, squareWidth);
  }
  
}
