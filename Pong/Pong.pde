import processing.sound.*;
Ball bbb;
boolean a;
int time;
int side;
int score;
int s = 5;
SoundFile boop;
void setup(){
  if(random(2) <= 1){
    side = -1;
  }
  else{
    side =1;
  }
  background(0);
  size(640,480);
  bbb = new Ball(2.5,(2-random(2))*random(10),(2-random(2))*random(10),side* 0.07);
  a = true;
  score = 0;
  boop = new SoundFile(this, "boop.mp3");
}
void draw(){
 if(s > 0){
    fill(255);
    textSize(100);
    delay(1000);
    text(s,width/2, height/2);
    s = s - 1;}
else{
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
  if(bbb.zc() <=1){
    if(mousePressed){
      if(sqrt(sq(bbb.xc()+width/2-mouseX )+sq(bbb.yc()+height/2-mouseY)) < 150){
        bbb.zmove();
        score += 1;
       boop.play();
      }
      else{
        a=false;
        score = 0;
      }
    }
    else{
      a= false;
      score = 0;
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
  else{
    background(255);
    line(0,480,width/2,height/2);
    line(0,0,width/2,height/2);
    line(640,0,width/2,height/2);
    line(640,480,width/2,height/2);
    rectMode(CENTER);
    fill(255);
    rect(width/2,height/2,width/5,height/5);
    bbb = new Ball(2.5,random(10),random(10),side *0.05);
    fill(random(255),random(255),random(255));
    ellipse(width/2,height/2, bbb.scale(100),bbb.scale(100));
    if (time == 100){
      a = true;
      time = 0;
      side = -side;
    }
    else{
      time ++;
    }
    if(mousePressed){
    noFill();
    ellipse(mouseX, mouseY, 150,150);
  }
  }
  textSize(32);
text(score, 50, 40); 

}
}