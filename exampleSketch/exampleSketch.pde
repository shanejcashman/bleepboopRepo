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


 
  background(0);
  translate(300, 300);
  rotateY(posY);
  rotateX(pos);
  rotateZ(pos);
  fill(0,191,255);
  stroke(20);
  box(150);
  
  michael();
  
}

void michael() {
  translate(-300, -300);
  fill(0,191,255);
  textSize(32);
  text("DOPE CUBE", 100, 100); 
}