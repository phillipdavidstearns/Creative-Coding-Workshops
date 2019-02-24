// divide the canvas into a grid with this spacing
float squareSpacing;

// this is the "origin" of our "grid"
float rowX;
float rowY;

// width of the squares
float squareWidth = 20;

// how many rows and columns
float qty_squares = 5;

void setup() {
  
  size(250, 250);
  background(255); 
  
  // calculate the squareSpacing based on the canvas width
  squareSpacing = width / (qty_squares + 1);
  rowX = squareSpacing;
  rowY = squareSpacing;
  
  noLoop();
  
}

void draw() {
  
  background(255);
  
  rectMode(CENTER);
  
  // iterate through the row
  for (int i = 0; i < qty_squares; i++) {
    // iterate through the columns
    for (int j = 0; j < qty_squares; j++) {
      // draw a square
      square(rowX + (i*squareSpacing), rowY + (j*squareSpacing), squareWidth);
      
    }
    
  }

}
