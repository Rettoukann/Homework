import geomerative.*;

RShape grp;
RPoint[] points;

void setup() {
  size(1000, 1000);
  frameRate(30);

  RG.init(this);
  grp=RG.getText("CreativeCoding", "wangqing.ttf", 150, CENTER);
}
void draw() {
  background(255);

  translate(width/2, height/2);
  noStroke();
  fill(#17E8B2);
  grp.draw();

  RG.setPolygonizer(RG.UNIFORMLENGTH);
  float length=map(mouseX, 0, width, 10, 200);
  RG.setPolygonizerLength(length);

  points=grp.getPoints();

  if (points!=null) {
    noFill();
    stroke(#FFD340);
    strokeWeight(2);
    beginShape();
    for (int i=0; i<points.length; i++) {
      vertex(points[i].x, points[i].y);
    }
    endShape();
  }
}
