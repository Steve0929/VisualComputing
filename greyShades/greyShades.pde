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
      int shadesNumber = 3; //NumberOfShades is a value between 2 and 256
      float conversionFactor = 255 / (shadesNumber -1);
      float average = (red+green+blue) /3;
      float grey = int(average/conversionFactor) * conversionFactor;
      color Color = color(grey, grey, grey);
      set(x, y, Color);
    }
  }
  //original image
  image(img, 0, 0, width/2, height);
}

void draw() {
}
