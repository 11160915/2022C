PImage img, img2, imgBG;
void setup(){
  size(400,400);
  imgBG = loadImage("BG.png");
  img = loadImage("astro.png");
  img2 = loadImage("image2.png");
}

void draw(){
  imageMode(CENTER);
  image(imgBG, 200, 200);
  image(img2, 0, 0);
  image(img, mouseX, mouseY);
}
