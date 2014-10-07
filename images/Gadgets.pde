void setup()
{
  size(305,199);
  smooth();
}

float r = 20;
float vx = random(1,3);
float vy = random(1,3);
float dx = 1;
float dy = 1;
float X = random(r, width-r);
float Y = random(r, height-r);

void draw()
{
  background(0,0,0); 

  fill(0,255,0);
  ellipse(X,Y,2*r,2*r);
  
  X = X + dx * vx;
  Y = Y + dy * vy;
  if(X > width - 0.9*r || X < 0.9*r)
  {
    dx = -dx;
  }
  
  if(Y > height - 0.9*r || Y < 0.9*r)
  {
    dy = -dy;
  }
}
