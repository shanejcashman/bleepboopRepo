float pos;
float posX;
float posY;
float posZ;
float size;

void setup(){
  size(400, 400, P3D);
  lights();
}

void draw(){
  if (mouseX > 180){
    posY -= 0.01;
  } else if (mouseX < 180){
    posY += 0.01;
    
  if (mouseY > 180){
    posZ -= 0.01;
  }
  
  
  }
  if (mouseY < 180){
    posZ += 0.01;
  }
  background(200);
  translate(200, 200);
  rotateY(posY);
  rotateX(pos);
  rotateZ(pos);
  noFill();
  box(400);
}
 
  