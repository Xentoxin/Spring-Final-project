Ball bbb;
void setup(){
  background(0);
  size(1000,1000);
  bbb = new Ball(5, 2,1,0.1);
  
}
void draw(){
  background(0);
  rect(400,400,200,200);
  strokeWeight(2);
  stroke(204,102,0);
  line(600,400,1000,0);
  line(600,600,1000,1000);
  line(400,600,0,1000);
  line(400,400,0,0);
  fill(0);
  rect(400,400,200,200);
  bbb.xmove();
  bbb.ymove();
  bbb.zmove();
  //ellipse(bbb.xc()+500 bbb.yc()+ 500, 100,100);
  ellipse(bbb.scale(bbb.xc())+500, bbb.scale(bbb.yc())+ 500, bbb.scale(100),bbb.scale(100));
}