// getting an image from online source
// using keys to set boolean flags


boolean rowBeforeCol = false;
boolean sortRow = true;
boolean sortCol = true;

PImage img;

void setup() {
  size(100, 100);
  surface.setResizable(true);
  openImage();
  surface.setSize(img.width, img.height);
  noLoop();
} 

void draw() {

  openImage();

  if (rowBeforeCol) {
    if (sortRow) sortImgRows(img);
    if (sortCol) sortImgCols(img);
  } else {
    if (sortCol) sortImgCols(img);
    if (sortRow) sortImgRows(img);
  }

  image(img, 0, 0);

  //img.save("output/testSort.png");
}

///////////////////////////////////////////////////////
// row Sorting

void sortImgRows(PImage _image) {
  _image.loadPixels();
  for (int y = 0; y < img.height; y++) {
    setImgRow( y, sort( getImgRow( y, _image ) ), _image );
  }
  _image.updatePixels();
}

color[] getImgRow(int _y, PImage _image) {
  color[] px = new color[_image.width];
  for (int x = 0; x < img.width; x++) {
    px[x] = img.pixels[ _y * width + x ];
  }
  return px;
}

void setImgRow(int _y, color[] _pixels, PImage _image) {
  for (int x = 0; x < _image.width; x++) {
    _image.pixels[ _y * width + x ]= _pixels[x];
  }
}

///////////////////////////////////////////////////////
// column Sorting

void sortImgCols(PImage _image) {
  _image.loadPixels();
  for (int x = 0; x < img.width; x++) {
    setImgCol( x, sort( getImgCol( x, _image ) ), _image );
  }
  _image.updatePixels();
}

color[] getImgCol(int _x, PImage _image) {
  color[] px = new color[_image.height];
  for (int y = 0; y < img.height; y++) {
    px[y] = img.pixels[ y * width + _x ];
  }
  return px;
}

void setImgCol(int _x, color[] _pixels, PImage _image) {
  for (int y = 0; y < _image.height; y++) {
    _image.pixels[ y * width + _x ]= _pixels[y];
  }
}

///////////////////////////////////////////////////////
// keyBindings

void keyPressed() {
  switch(key) {

  case 'r':
    rowBeforeCol = !rowBeforeCol;
    //reverseRowSort = !reverseRowSort;
    redraw();
    break;

  case 'x':
    sortRow = !sortRow;
    redraw();
    break;

  case 'y':
    sortCol = !sortCol;
    redraw();
    break;

  default:
    println("That key isn't recognized.");
    break;
  }
}

///////////////////////////////////////////////////////
// open an image into img

void openImage() {
  img = loadImage("https://upload.wikimedia.org/wikipedia/commons/0/02/Sea_Otter_%28Enhydra_lutris%29_%2825169790524%29_crop.jpg");
}
