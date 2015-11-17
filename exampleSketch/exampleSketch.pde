float pos;
float posX;
float posY;
float posZ;
float size;

void setup() {
  size(600, 600, P3D);
  lights();
}

void draw() {
  if (mouseX > 180) {
    posY -= 0.01;
  } else if (mouseX < 180) {
    posY += 0.01;

    if (mouseY > 180) {
      posZ -= 0.01;
    }
  }
  if (mouseY < 180) {
    posZ += 0.01;
  }

  pushMatrix();
  translate(130, height/2, 0);
  rotateY(1.25);
  rotateX(-0.4);
  noStroke();
  box(100);
  popMatrix();

  pushMatrix();
  translate(500, height*0.35, -200);
  noFill();
  stroke(0);
  sphere(280);
  popMatrix();

  background(10);
  translate(300, 300);
  rotateY(posY);
  rotateX(pos);
  rotateZ(pos);
  fill(250,180,0);
  box(150);
}