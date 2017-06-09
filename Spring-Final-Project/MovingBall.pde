float x;
float y;
float z;
float xvel;
float yvel;
float zvel;
float maxWidth;
float minWidth;
float maxHeight;
float minHeight;
float maxDepth;
float minDepth;
void setup(){
  size(640,480);
  x = width/2;
  y = height/2;
  z = 5;
  xvel = 5;
  yvel = 5;
  zvel = 5;
  maxWidth = 2*width/3;
  minWidth = width/3;
  maxHeight = 2*height/3;
  minHeight = height/3;
  maxDepth = 1000;
  minDepth = 50;
}
void draw(){
  ellipseMode(CENTER);
  ellipse(x,y,z,z);
  xMove();
  yMove();
  zMove();
}
void xMove(){
x += xvel;
if(x > maxWidth || x < minWidth){
  xvel = xvel * -1.1;
}
maxWidth += 50;
minWidth -= 50;

}
void yMove(){
y += yvel;
if(y > maxHeight || y < minHeight){
  yvel = yvel * -1.1;
}
maxHeight += 50;
minHeight -= 50;
}
void zMove(){
z += zvel;
if(z > maxDepth || z < minDepth){
  zvel = zvel * -1.1;
}
}