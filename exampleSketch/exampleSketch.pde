float pos;
float posX;
float posY;
float posZ;
float size;

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
}