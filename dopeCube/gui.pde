class Button {
  boolean state;
  boolean hover;
  float xPosition;
  float yPosition;
  float width;
  float height;
  int red, green, blue;
  int red2, green2, blue2;

  Button(float xPos, float yPos, float w, float h) {
    xPosition = xPos;
    yPosition = yPos;
    width = w;
    height = h;
  }

  // check if the mouse is over the button
  void checkButtonState() {
    if(mouseX < width + xPosition && mouseX > xPosition && mouseY < yPosition + height && mouseY > yPosition) {
      state = !state;
      println("Yay!");
    }
  }

  // render the button
  void drawButton() {
    if (state) {
      fill(red, green, blue);
    } else {
      fill(red2, green2, blue2);
    }
    rect(xPosition, yPosition, width, height);
  }

  // sets the color of the button when its on
  void buttonOnColor(int r, int g, int b) {
    red = r;
    green = g;
    blue = b;
  }

  // sets the color of the button when its off
  void buttonOffColor(int r, int g, int b) {
    red2 = r;
    green2 = g;
    blue2 = b;
  }
}
