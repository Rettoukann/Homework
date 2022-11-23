int num = 150;
float mx[] = new float[num];
float my[] = new float[num];

void setup() {
  size(640, 480);
  noStroke();
  noFill(); 
}

void draw() {
  background(0); 
  strokeWeight(6);
  stroke(random(150,255),random(150,255),random(150,255));
int which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;
  
  for (int i = 0; i < num; i++) {
    int index = (which+1 + i) % num;
    ellipse(mx[index], my[index], i, i);
  }
}
