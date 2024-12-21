float orbitDuration = 10*1000; // 5 second orbit
float orbitRad = 300;
float chaos = 0;

boolean slinkyMode = false;

void setup()
{
  size(1080,1080);
   background(0);
}

void draw()
{
  //fill(0, 5);
  //rect(0, 0, width, height);
  
  if(mousePressed){
    chaos += 0.01;
    //slinkyMode = true;
  }else
  {
    if(chaos > 0){
    chaos -= 0.01;
    }
    
  }
  translate(width/2,height/2);
  
  //ellipse(0,0,100,100);
  float ang = TWO_PI * millis()/orbitDuration;
  float x = cos(ang + chaos)*orbitRad  * millis()/orbitDuration % width;
  float y = sin(ang + chaos*2)*orbitRad  * millis()/orbitDuration % height;
  
  float col = random(255);
  float col2 = random(255);
  if(slinkyMode)
  {
  stroke(col, col2, 50);
  fill(0, 0);
  }else
  {
  noStroke();
  fill(40, 40, col,10);
  }
   
  ellipse(x,y,x,y);
}
