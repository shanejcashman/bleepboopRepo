float pos;
float posX;
float posY;
float posZ;
float size;

int count;

Button button1 = new Button(40, 40, 40, 40);
Button button2 = new Button(90, 40, 40, 40);

void setup(){
  size(750, 750, P3D);
  button1.buttonOnColor(255, 0, 0);
  button1.buttonOffColor(0, 255, 0);
  button2.buttonOnColor(255, 255, 0);
  button2.buttonOffColor(0, 255, 255);
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

  translate(380, 380);
  rotateX(posX);
  rotateY(posY);
  rotateZ(posZ);
  box(200);
  translate(-250, -250);

  dopeCubeText(120, 110);
  dopeCubeText(120, 500);


  rotateX(0);
  rotateY(0);
  rotateX(0);
  button1.checkButtonState();
  button1.drawButton();
  button2.checkButtonState();
  button2.drawButton();
  rotateX(posX);
  rotateY(posY);
  rotateZ(posZ);
}


void dopeCubeText(int x, int y) {
  fill(0,191,255);
  textSize(48);
  if (count < 10) {
    text("D    C   ", x, y);
  } else if (count < 20) {
    text(" O    U  ", x, y);
  } else if (count < 30) {
    text("  P    B ", x, y);
  } else if (count < 40) {
    text("   E    E", x, y);
  } else if (count < 50) {
    text("DOPE CUBE", x, y);
  } else if (count < 80) {
    ;
  } else if (count < 100) {
    text("DOPE CUBE", x, y);
  } else if (count < 120) {
    ;
  } else if (count < 179) {
    text("DOPE CUBE", x, y);
  } else if (count > 180) {
    count = 0;
  }

  count ++;
}
