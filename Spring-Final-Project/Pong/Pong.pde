Ball bbb;
boolean a;
void setup(){
  background(0);
  size(640,480);
  bbb = new Ball(5,4,6,0.02);
  a = true;
}
void draw(){
  if(a){
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
  if(mousePressed && bbb.zc() <=1){
    if(sqrt(sq(bbb.xc()+width/2-mouseX )+sq(bbb.yc()+height/2-mouseY)) < 150){
      bbb.zmove();
    }
    else{
      a= false;
    }
  }
  else{
    bbb.zmove();
  }
  ellipseMode(CENTER);
  fill(random(255),random(255),random(255));
  //ellipse(bbb.xc()+500 bbb.yc()+ 500, 100,100);
  fill(0);
  ellipse(bbb.xc()/5+width/2,bbb.yc()/5+height/2,30,30);
  fill(random(255),random(255),random(255));
  ellipse(bbb.scale(bbb.xc())+width/2, bbb.scale(bbb.yc())+ height/2, bbb.scale(100),bbb.scale(100));
  if(mousePressed){
    noFill();
    ellipse(mouseX, mouseY, 150,150);
  }
  }
}