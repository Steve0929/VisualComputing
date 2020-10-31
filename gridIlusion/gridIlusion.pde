PShader grid;

void setup() {
  size(600, 600, P3D);
  grid = loadShader("grid.glsl");
  //grid.set("resolution", width, height);
}


void draw() {
   filter(grid);
   ellipseMode(RADIUS);  // Set ellipseMode to RADIUS
   fill(255);  // Set fill to white
   ellipse(width/2, height/2, 15 , 15);  // Draw white ellipse using RADIUS mode
   
}
