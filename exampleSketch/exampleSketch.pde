float rotVal=0;
float radius =100;
float speed =3;
PVector c0;
PVector c1;
PVector c2;


void setup(){
  size(750,500);
  
}


void draw(){
  ellipse (45,40, 40)
  background(180, 240, 0);
  

  rotVal+= speed;

c1.x = mouseX+cos((rotVal/180)*PI)* radius;
c1.y = mouseY-sin((rotVal/180)* PI)* radius;

frameRate(138);
pushMatrix();
translate (c1.x, c1.y);
rotate(rotVal);
rotVal+=.001;
rect (35, 35, 10, 7);
  rect (55, 75, 27, 30); 
  textSize(24);
  fill(#534A6C);
  text("yoWza ain't the time runnin?!", 50, 50); 
popMatrix();
if (mousePressed == true) {
    fill(0);
  } else {
    fill(255);
  }
  
}

