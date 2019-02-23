float squareSpacing;
float rowX;
float rowY;
float[] squareWidths;
int qty_squares = 5;

void setup() {
  size(250, 250);
  background(255); 
  squareSpacing = width / (qty_squares + 1);
  rowX = squareSpacing;
  rowY = squareSpacing;
  frameRate(1);
  
  squareWidths = new float[int(pow(qty_squares,2))];
  
  for(int i =0; i < squareWidths.length;i++ ){
    squareWidths[i]=random(5,25);
  }
}

void draw() {
  //background(255);
  rectMode(CENTER);
  for (int i = 0; i < qty_squares; i++) {
    for (int j = 0; j < qty_squares; j++) {
      square(rowX + (i*squareSpacing), rowY + (j*squareSpacing), squareWidths[i*qty_squares+j]);
    }
  }
}
