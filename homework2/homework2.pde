void setup() {
  size(1000, 400);
  background(#EDEADA);
  stroke(150);
}

void draw() {
  for (int x =0; x<=400; x+=5) {
    line(0, x, 200, x);
    line(300,x,300+x,0);
    line(700,x,300+x,400);
    line(800,x,1000,200+x);
    line(800+x,0,1000,200-x);
  }
}                          
