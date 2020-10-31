PImage img;
import processing.video.*;
Movie myMovie;

void setup() {
  size(1200, 600);
  //img = loadImage("imagen.jpg");
  //image(img, width/2, 0, width/2, height);
  background(0);
  myMovie = new Movie(this, "video.mp4");
  myMovie.loop();
  myMovie.volume(0);
  
  //image(img, 0, 0, width/2, height);
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  image(myMovie, 0, 0, width, height);
  for (int x=width/2; x<width; x++)
  {
    for (int y=0; y<height; y++)
    {
      color c = get(x, y);
      float red = red(c);
      float green = green(c);
      float blue = blue(c);
      int average = (int)(red+green+blue)/3;
      color Color = color(average, average, average);
      set(x, y, Color);
    }
  }
  
}
