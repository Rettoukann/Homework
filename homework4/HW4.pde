PImage Dog;

void setup() {
  size(500, 500);
  Dog = loadImage("DOG.jpeg");
  Dog.resize(500, 500);
}

void draw() {
  float circleNum=mouseX/10;
  float circleSize=width/circleNum;
  translate(circleSize/2, circleSize/2);

  background(255);

  for (int x=0; x<circleNum; x++) {
    for (int y=0; y<circleNum; y++) {
      
      color c =Dog.get(int(x*circleSize), int(y*circleSize));
      fill(c);
      noStroke();
      ellipse(x*circleSize, y*circleSize, circleSize, circleSize);
    }
  }
}
