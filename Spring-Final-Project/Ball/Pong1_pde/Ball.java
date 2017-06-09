public class Ball{
    private float radius;
    private float xvel;
    private float yvel;
    private float zvel;
    private float xcoor;
    private float ycoor;
    private float zcoor;
    public Ball(float d, float x, float y, float z){
	radius = 10;
	xcoor = 0;
	ycoor = 0;
	zcoor = d;
	xvel = x;
	yvel = y;
	zvel = z;
    }
    public float xmove(){
	xcoor +=xvel;
	if(xcoor > 500){
	    xcoor = 1000 - xcoor;
	    xvel = -xvel;
	}
	else if(xcoor < -500){
	    xcoor = -1000 -xcoor;
	    xvel = -xvel;
	}
	return xcoor;
    }
    public int ymove(){
	ycoor +=yvel;
	if(ycoor > 500){
	    ycoor = 1000 - ycoor;
	    yvel = -yvel;
	}
	else if(ycoor < -500){
	    ycoor = -1000 -ycoor;
	    yvel = -yvel;
	}
	return ycoor;
    }
    public float zmove(){
	zcoor +=zvel;
	if(zcoor >= 5){
	    zvel = -zvel;
	}
	else if(zcoor <= 1){
	    zvel = -zvel;
	}
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