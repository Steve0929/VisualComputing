PImage img;
void setup() {
  size(1200, 600);
  img = loadImage("imagen.jpg");
  image(img, width/2, 0, width/2, height);

  for (int x=width/2; x<width; x++)
  {
    for (int y=0; y<height; y++)
    {
      color c = get(x, y);
      float red = red(c);
      float green = green(c);
      float blue = blue(c);
      float grey = (max(red,green,blue)+min(red,green,blue) /2);
      color Color = color(grey, grey, grey);
      set(x, y, Color);
    }
  }
  image(img, 0, 0, width/2, height);
}

void draw() {
}
