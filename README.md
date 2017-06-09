Hao Yu Chn / Alvin Chen
Konstantinovich Period 9 Spring Final Project
First Person Pong
In this program, we simulate what it would be like to play bot against an AI. That is the end goal. 
So what did we do?
  We take input from the camera whilst adding a overlay to the input to make it look like a corridor. The back of the corridor (the back wall) is the opponent.
  The ball bounces off the side walls and back wall and the front wall.
  This is pseudo 3-d but not really. 
  We want the image to essentially look like a ball bouncing within the box.
  
  Then we wanted a paddle for the player to hit the ball with. Simple. WE used the video from the camera and used color tracking. WE hold a a piece
  of paper a certain color. The program tracks that color and recognizes thaat as the paddle and the ball only bounces off that paddle when it's heading
  towards the player. It's somwewhat overpowered because the player can just put the paper "paddle" super close to the camera and suddenly the entire screen
  is the player's paddle leaving no room for the player to miss the pong ball. 
