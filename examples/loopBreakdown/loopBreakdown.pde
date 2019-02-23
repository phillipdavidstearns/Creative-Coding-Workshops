float squareSpacing;
float rowX;
float rowY;
float squareWidth = 20;
float qty_squares = 5;
int i = 0;
int j = 0;
void setup() {
  size(250, 250);
  background(255); 
  squareSpacing = width / (qty_squares + 1);
  rowX = squareSpacing;
  rowY = squareSpacing;
  frameRate(1);
}

void draw() {
  //background(255);
  rectMode(CENTER);
  //for (int i = 0; i < qty_squares; i++) {
  //  for (int j = 0; j < qty_squares; j++) {
      square(rowX + (i*squareSpacing), rowY + (j*squareSpacing), squareWidth);
  //  }
  //}
  
  i++;
  i%=5;
  if(i==0){
    j++;
  }
  j%=5;
}
