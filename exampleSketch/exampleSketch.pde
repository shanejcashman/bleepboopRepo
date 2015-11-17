float pos;
float posX;
float posY;
float posZ;
float size;

int count;

void setup(){
  size(500, 500, P3D);
}

void draw(){
  background(0);
  lights();
  fill(240, 120, 0 );
  noStroke();

  if (mousePressed){
  }

  if (mouseX > 180){
    posY += 0.01;
  } else {
    posY += 0;
  }
  if (mouseX < 300){
    posY -= 0.01;
  } else {
    posY += 0;
  }

  if (mouseY > 180){
    posZ -= 0.01;
  }  else {
    posZ += 0;
  }
  if (mouseY < 300){
    posZ += 0.01;
  }  else {
    posZ += 0;
  }

  translate(250, 250);
  rotateY(posY);
  rotateX(posZ);
  rotateZ(pos);
  box(200);
  translate(-250, -250);

  dopeCubeText();
}


void dopeCubeText() {
  fill(0,191,255);
  textSize(48);
  if (count < 10) {
    text("D    C   ", 120, 110);
  } else if (count < 20) {
    text(" O    U  ", 120, 110);
  } else if (count < 30) {
    text("  P    B ", 120, 110);
  } else if (count < 40) {
    text("   E    E", 120, 110);
  } else if (count < 50) {
    text("DOPE CUBE", 120, 110);
  } else if (count < 80) {
    ;
  } else if (count < 100) {
    text("DOPE CUBE", 120, 110);
  } else if (count < 120) {
    ;
  } else if (count < 179) {
    text("DOPE CUBE", 120, 110);
  } else if (count > 180) {
    count = 0;
  }

  count ++;
}