public class PongBall{
    private int radius;
    private int xvel;
    private int yvel;
    private int zvel;
    private int xcoor;
    private int ycoor;
    private int zcoor;
    public PongBall(int d, int x, int y, int z){
	radius = 1;
	xcoor = 0;
	ycoor = 0;
	zcoor = d;
	xvel = x;
	yvel = y;
	zvel = z;
    }
    public int xmove(){
	xcoor +=xvel;
	if(xcoor > 1000){
	    xcoor = 2000 - xcoor;
	    xvel = -xvel;
	}
	else if(xcoor < -1000){
	    xcoor = -2000 -xcoor;
	    xvel = -xvel;
	}
	return xcoor;
    }
    public int ymove(){
	ycoor +=yvel;
	if(ycoor > 1000){
	    ycoor = 2000 - ycoor;
	    yvel = -yvel;
	}
	else if(ycoor < -1000){
	    ycoor = -2000 -ycoor;
	    yvel = -yvel;
	}
	return ycoor;
    }
    public int zmove(){
	zcoor +=zvel;
	if(zcoor > 1000){
	    zcoor = 2000 - zcoor;
	    zvel = -zvel;
	}
	else if(zcoor < -1000){
	    zcoor = -2000 -zcoor;
	    zvel = -zvel;
	}
	return zcoor;
    }
    public int scale(int n){
	return n/zcoor;
    }
}
