float pos;
float posX;
float posY;
float posZ;
float growth;

int count;

Button button1 = new Button(10, 10, 20, 20);
Button button2 = new Button(40, 10, 20, 20);
Button button3 = new Button(70, 10, 20, 20);
Button button4 = new Button(100, 10, 20, 20);
Button button5 = new Button(130, 10, 20, 20);
Button button6 = new Button(160, 10, 20, 20);

void setup(){
  size(750, 750, P3D);
  growth = 200;
  button1.buttonOnColor(255, 0, 0);
  button1.buttonOffColor(120, 120, 120);
  button2.buttonOnColor(255, 255, 0);
  button2.buttonOffColor(120, 120, 120);
  button3.buttonOnColor(0, 255, 0);
  button3.buttonOffColor(120, 120, 120);
  button4.buttonOnColor(0, 255, 255);
  button4.buttonOffColor(120, 120, 120);
  button5.buttonOnColor(0, 0, 255);
  button5.buttonOffColor(120, 120, 120);
  button6.buttonOnColor(255, 255, 255);
  button6.buttonOffColor(120, 120, 120);
}

void draw(){
  background(0);
  lights();
  noStroke();

  if (mousePressed){
    growth--;
    fill(250);
    rotateY(posY/3);
    ellipse(mouseX, mouseY, 100, 100);
  }
    fill(240, 120, 0);
    
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

  pushMatrix();
  translate(380, 380);
  rotateX(posX);
  rotateY(posY);
  rotateZ(posZ);
  box(growth);
  translate(-250, -250);
  dopeCubeText(120, 110);
  dopeCubeText(120, 500);
  popMatrix();

  button1.drawButton();
  button2.drawButton();
  button3.drawButton();
  button4.drawButton();
  button5.drawButton();
  button6.drawButton();
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

void mouseReleased() {
  button1.checkButtonState();
  button2.checkButtonState();
  button3.checkButtonState();
  button4.checkButtonState();
  button5.checkButtonState();
  button6.checkButtonState();
}