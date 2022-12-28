int rectX, rectY;   // Position of square button
int circleX, circleY; // Position of circle button
int rectSize = 90;   // Diameter of rect
int circleSize = 93;  // Diameter of circle
color rectColor, circleColor, baseColor;
color rectHighlight, circleHighlight;
color currentColor;
boolean rectOver = false;
boolean circleOver = false;

void setup() {
 size(500, 500);
 rectColor = color(#57F7B6);
 rectHighlight = color(51);
 circleColor = color(#FFC524);
 circleHighlight = color(204);
 baseColor = color(102);
 currentColor = baseColor;
 circleX = width/2+circleSize/2+10;
 circleY = height/2;
 rectX = width/2-rectSize-10;
 rectY = height/2-rectSize/2;
 ellipseMode(CENTER);
}

void draw() {
 detect(mouseX, mouseY);
 background(currentColor);
  
 //绘制方形按钮
 if (rectOver) {
  fill(rectHighlight);
 } else {
  fill(rectColor);
 }
 stroke(255);
 rect(rectX, rectY, rectSize, rectSize);
  
 //绘制圆形按钮
 if (circleOver) {
  fill(circleHighlight);
 } else {
  fill(circleColor);
 }
 stroke(0);
 ellipse(circleX, circleY, circleSize, circleSize);
}

void detect(int x, int y) {
 if ( overCircle(circleX, circleY, circleSize) ) {
  circleOver = true;
  rectOver = false;
 } else if ( overRect(rectX, rectY, rectSize, rectSize) ) {
  rectOver = true;
  circleOver = false;
 } else {
  circleOver = rectOver = false;
 }
}

void mousePressed() {
 if (circleOver) {
  currentColor = circleColor;
 }
 if (rectOver) {
  currentColor = rectColor;
 }
}

boolean overRect(int x, int y, int width, int height) {
 if (mouseX >= x && mouseX <= x+width && 
   mouseY >= y && mouseY <= y+height) {
  return true;
 } else {
  return false;
 }
}

boolean overCircle(int x, int y, int diameter) {
 float disX = x - mouseX;
 float disY = y - mouseY;
 if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
  return true;
 } else {
  return false;
 }
}
