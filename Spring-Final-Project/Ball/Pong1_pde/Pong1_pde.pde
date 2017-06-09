Ball bbb;
void setup(){
  size(1000,1000);
  ellipse(500,500,100,100);
  bbb = new Ball(1, 10,10,0.2);
}
void draw(){
  bbb.xmove();
  bbb.ymove();
  bbb.zmove();
  ellipse(bbb.xc()+500, bbb.yc()+ 500, 100,100);
}