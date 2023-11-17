
void setup() {
  size(600,600);
}

// Done every frame
void draw() {
  
  background(255, 255, 255);  // white background
  stroke(0, 0, 0);  // black stroke
  
  // repeat over height of screen in increments of 30 pixels
  for (float y = -150; y <= height; y += 30) {  
    
    if (y < height/2) {  // if in top half of screen
      // blue to green gradient
      stroke(0, map(y, -100, height/2, 0, 120), 50);
    } else {  // if in bottom half of screen
      // green to orange gradient
      stroke(map(y, height/2, height-50, 0, 255), 120, 50);
    }
    
    // repeat over width of screen for every pixel
    for (float x = 0; x <= width; x++) {  
    
      float noiseVal = noise(x/400, y);  // generate 2D noise value
      float offset = 150 * noiseVal;  // amplify noise value
      float yLine = y + offset;  // offset y value by scaled noise
      
      line(x, height, x, yLine);  // draw line from bottom of screen to yLine
    
    }
    
  }

  save("Output/still.png");  // save image to output folder
  noLoop();  // stop drawing of new frames
}
