class Button {
  boolean state;
  float xPosition;
  float yPosition;
  float width;
  float height;
  int red, green, blue;
  

  Button(float xPos, float yPos, float w, float h) {
    xPosition = xPos;
    yPosition = yPos;
    width = w;
    height = h;
  }

  // check if the mouse is over the button
  boolean checkButtonState() {
    if(mouseX < width + xPosition && mouseX > xPosition && mouseY < yPosition + height && mouseY > yPosition) {
      return true;
    }
    return false;
  }

  // render the button
  void drawButton() {
    fill(red, green, blue);
    rect(xPosition, yPosition, width, height);
  }

  // sets the color of the button when its on
  void buttonOnColor(int r, int g, int b) {
    red = r;
    green = g;
    blue = b;
  }

}

