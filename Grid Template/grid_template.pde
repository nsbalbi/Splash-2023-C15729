
// Done once
void setup() {
  size(600,600);  // initialize window
}

// Done every frame
void draw() {
  
  background(255, 255, 255);
  stroke(0, 0, 0);
  strokeWeight(2);
  
  int nX = 10;  // number of subdivisions over width
  int nY = 10;  // number of subdivisions over height
  
  for (float x = 0; x <= width; x += width/nX) {
   
    for (float y = 0; y <= height; y += height/nY) {
      
      // Code here is run at every grid location
      circle(x, y, 30);
      
    }
    
  }

  save("Output/still.png");  // save image to output folder
  noLoop();  // stop drawing of new frames
}
