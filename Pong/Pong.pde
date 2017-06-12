import processing.sound.*;
import processing.video.*;

Capture cam;
Ball bbb;
boolean a;
int time;
int side;
int score;
int s = 5;
SoundFile boop;
void setup() {

  String[] cameras = Capture.list();

  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }

    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[1]);
    cam.start();
  }
  if (random(2) <= 1) {
    side = -1;
  } else {
    side =1;
  }
  size(640, 480);
  bbb = new Ball(2.5, (2-random(2))*random(10), (2-random(2))*random(10), side* 0.07);
  a = true;
  score = 0;
  boop = new SoundFile(this, "boop.mp3");
}
void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  image(cam, 0, 0);
  if (a) {
    line(0, 0, width/2-width/10, height/2-height/10);
    line(0, height, width/2-width/10, height/2+height/10);
    line(width, 0, width/2 + width/10, height/2 - height/10);
    line(width, height, width/2 + width/10, height/2 + height/10);
    rectMode(CENTER);
    rect(width/2, height/2, width/5, height/5);
    strokeWeight(2);
    stroke(204, 102, 0);
    bbb.xmove();
    bbb.ymove();
    if (bbb.zc() <=1) {
      if (mousePressed) {
        if (sqrt(sq(bbb.xc()+width/2-mouseX )+sq(bbb.yc()+height/2-mouseY)) < 150) {
          bbb.zmove();
          score += 1;
          boop.play();
        } else {
          a=false;
          score = 0;
        }
      } else {
        a= false;
        score = 0;
      }
    } else {
      bbb.zmove();
    }
    ellipseMode(CENTER);
    //ellipse(bbb.xc()+500 bbb.yc()+ 500, 100,100);
    ellipse(bbb.xc()/5+width/2, bbb.yc()/5+height/2, 30, 30);
fill(255);
ellipse(bbb.scale(bbb.xc())+width/2, bbb.scale(bbb.yc())+ height/2, bbb.scale(100), bbb.scale(100));
    if (mousePressed) {
      noFill();
      ellipse(mouseX, mouseY, 150, 150);
    }
  } else {

    line(0, 480, width/2, height/2);
    line(0, 0, width/2, height/2);
    line(640, 0, width/2, height/2);
    line(640, 480, width/2, height/2);
    rectMode(CENTER);
    fill(255);
    rect(width/2, height/2, width/5, height/5);
    bbb = new Ball(2.5, random(10), random(10), side *0.05);
noFill();
ellipse(width/2, height/2, bbb.scale(100), bbb.scale(100));
    if (time == 100) {
      a = true;
      time = 0;
      side = -side;
    } else {
      time ++;
    }
    if (mousePressed) {
      noFill();
      ellipse(mouseX, mouseY, 150, 150);
    }
  }
  textSize(32);
  text(score, 50, 40); 
  if (score == 5) {
    background(255);
    textSize(100);
    fill(random(255));
    textAlign(CENTER);
    text("You Win", width/2, height/2);
  }
}