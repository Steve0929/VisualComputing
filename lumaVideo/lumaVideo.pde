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

}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  //las 2 al tiempo
  image(myMovie, width/2, 0, width/2, height);
  image(myMovie, 0, 0, width/2, height);
  for (int x=width/2; x<width; x++)
  {
    for (int y=0; y<height; y++)
    {
      color c = get(x, y);
      float red = red(c);
      float green = green(c);
      float blue = blue(c);
      float grey = red*0.299 + green*0.587 + blue*0.114;
      color Color = color(grey, grey, grey);
      set(x, y, Color);
    }
  }
}
