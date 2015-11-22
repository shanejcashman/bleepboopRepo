float pos;
float posX;
float posY;
float posZ;
float size;

int count;

Button button1 = new Button(10, 10, 20, 20);
Button button2 = new Button(40, 10, 20, 20);
Button button3 = new Button(70, 10, 20, 20);
Button button4 = new Button(100, 10, 20, 20);
Button button5 = new Button(130, 10, 20, 20);
Button button6 = new Button(160, 10, 20, 20);
Button buttonFX1 = new Button(10, 40, 15, 15);

void setup(){
  size(750, 750, P3D);
  button1.buttonOnColor(240, 120, 0);
  button1.buttonOffColor(120, 120, 120);
  button2.buttonOnColor(255, 255, 0);
  button2.buttonOffColor(120, 120, 120);
  button3.buttonOnColor(0, 255, 0);
  button3.buttonOffColor(120, 120, 120);
  button4.buttonOnColor(0, 255, 255);
  button4.buttonOffColor(120, 120, 120);
  button5.buttonOnColor(30, 30, 200);
  button5.buttonOffColor(120, 120, 120);
  button6.buttonOnColor(255, 255, 255);
  button6.buttonOffColor(120, 120, 120);
}

void draw(){
  background(0);
  lights();
  noStroke();

  if (mousePressed){
  }

  if (mouseX < 250){
    posY -= 0.02;
  } else if (mouseX > width - 250){
    posY += 0.02;
  }

  if (mouseY < 250){
    posX += 0.02;
  } else if (mouseY > width - 250){
    posX -= 0.02;
  }

  setCubeColor();

  // push matrix that effects only the 3D cube
  pushMatrix();
  translate(380, 380);
  rotateX(posX);
  rotateY(posY);
  rotateZ(posZ);
  box(200);
  translate(-250, -250);

  dopeCubeText(120, 110);
  dopeCubeText(120, 500);

  // pop the matrix
  popMatrix();

  button1.drawButton();
  button2.drawButton();
  button3.drawButton();
  button4.drawButton();
  button5.drawButton();
  button6.drawButton();
}

void mouseReleased() {
  button1.checkButtonState();
  button2.checkButtonState();
  button3.checkButtonState();
  button4.checkButtonState();
  button5.checkButtonState();
  button6.checkButtonState();
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

// checks the states of the buttons an assignes an acording color
void setCubeColor() {
  if (button1.state == true) {
    fill(240, 120, 0);
  } else if (button2.state == true) {
    fill(255, 255, 0);
  } else if (button3.state == true) {
    fill(0, 255, 0);
  } else if (button4.state == true) {
    fill(0, 255, 255);
  } else if (button5.state == true) {
    fill(0, 0, 255);
  } else if (button6.state == true) {
    fill(255, 255, 255);
  }
}
