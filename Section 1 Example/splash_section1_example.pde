
// Done once
void setup() {
  size(600,600);  // initialize window
}

// Done every frame
void draw() {
  
  background(255, 255, 255);  // white background
  
  strokeWeight(3);  // 3 pixel wide borders
  
  // Draw circle shadow
  fill(0, 0, 0, 150);  // transparent black
  noStroke();  // no border
  circle(width/2 + 20, height/2 + 20, 300);
  
  // Draw circle
  fill(200, 0, 0);  // solid red
  stroke(0, 0, 0);  // black border
  circle(width/2, height/2, 300);
  
  // Draw square shadow
  fill(0, 0, 0, 150);  // transparent black
  noStroke();  // no border
  rect(320 + 20, 350 + 20, 150, 150);
  
  // Draw square
  fill(0, 0, 200);  // solid blue
  stroke(0, 0, 0);  // black border
  rect(320, 350, 150, 150);
  
  // Draw triangle shadow
  fill(0, 0, 0, 150);  // transparent black
  noStroke();  // no border
  triangle(100 + 20, 100 + 20, 
           300 + 20, 100 + 20, 
           200 + 20, 300 + 20);
  
  // Draw triangle
  fill(0, 200, 0);  // solid green
  stroke(0, 0, 0);  // black border
  triangle(100, 100, 
           300, 100, 
           200, 300);
           
  save("Output/still.png");  // save image 
  noLoop();  // stop drawing of new frames
}
