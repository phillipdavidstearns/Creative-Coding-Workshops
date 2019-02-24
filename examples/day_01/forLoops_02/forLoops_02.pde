// we'll use variables instead of hard coding things

// spacing between squares
float squareSpacing;

// where to start drawing the row of squares
float rowX;
float rowY;

// the width of our squares
float squareWidths[] = { 23, 50, 13, 62, 41 };


void setup() {
  
  size(500, 500);
  background(255);
  
  squareSpacing = width / (squareWidths.length + 1);
  rowX = squareSpacing;
  rowY = height / 2;
  
}

void draw() {
  
  background(255);
  
  // by default the rect and square draw from their upper right
  // drawing from center can help simplify things for us
  rectMode(CENTER);
  
  for (int i = 0; i < squareWidths.length; i++) {
    // each time the for loop executes, a square is drawn
    square(rowX + (i * squareSpacing), rowY, squareWidths[i]);
  }
  
}
