
// Done once
void setup() {
  size(600,600);  // initialize window
}

// Done every frame
void draw() {
  
  background(0, 0, 0);  // black background
  strokeWeight(2);  // 2 pixel width border
  
  for (int i = 0; i < 10000; i++ ) {  // repeat 10000 times
    
    // Generate random rectangle parameters
    float x = random(-40, width);  // x coordinate
    float y = random(-40, height);  // y coordinate
    float rWidth = random(15, 40);  // rect width
    float rHeight = random(15, 40);  // rect height
    
    // Generate color gradients
    float r = map(x, -40, width, 0, 255);  // red component
    float g = map(y, -40, height, 0, 255);  // green component
    float b = map(x, -40, width, 255, 0);  // blue component
          
    fill(r, g, b);  // set color
    rect(x, y, rWidth, rHeight);  // draw rect
    
  }

  save("Output/still.png");  // save image to output folder
  noLoop();  // stop drawing of new frames
}
