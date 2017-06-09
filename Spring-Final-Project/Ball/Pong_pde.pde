Ball bbb;
void setup(){
  background(0);
  size(640,480);
  bbb = new Ball(10, 17,14,0.2);
  
}
void draw(){
  background(255);
  line(0,480,width/2,height/2);
  line(0,0,width/2,height/2);
  line(640,0,width/2,height/2);
  line(640,480,width/2,height/2);
  rectMode(CENTER);
  fill(255);
  rect(width/2,height/2,width/5,height/5);
  strokeWeight(2);
  stroke(204,102,0);
  fill(255);
  bbb.xmove();
  bbb.ymove();
  bbb.zmove();
  fill(random(255),random(255),random(255));
  //ellipse(bbb.xc()+500 bbb.yc()+ 500, 100,100);
  ellipse(bbb.scale(bbb.xc())+width/2, bbb.scale(bbb.yc())+ height/2, bbb.scale(100),bbb.scale(100));
}