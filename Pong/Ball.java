public class Ball{
    private float radius;
    private float xvel;
    private float yvel;
    private float zvel;
    private float xcoor;
    private float ycoor;
    private float zcoor;
    public Ball(float d, float x, float y, float z){
  radius = 5;
  xcoor = 0;
  ycoor = 0;
  zcoor = d;
  xvel = x;
  yvel = y;
  zvel = z;
    }
    public float xmove(){
  if(xcoor >= 270){
      xvel = -xvel;
  }
  else if(xcoor <= -270){
      xvel = -xvel;
  }
  xcoor +=xvel;
  return xcoor;
    }
    public float ymove(){
  if(ycoor >= 190){
      yvel = -yvel;
  }
  else if(ycoor <= -190){
      yvel = -yvel;
  }
  ycoor +=yvel;
  yvel= yvel + 1;
  return ycoor;
    }
    public float zmove(){
  if(zcoor >= 5){
      zvel = -zvel;
  }
  else if(zcoor <= 1){      zvel = -zvel;
  }
  zcoor +=zvel;
  return zcoor;
    }
    public float scale(float n){
  return n/zcoor;
    }
    public float rad(){
  return radius;
    }
    public float xc(){
      return xcoor;
    }
    public float yc(){
      return ycoor;
    }
    public float zc(){
      return zcoor;
    }
}