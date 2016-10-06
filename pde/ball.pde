void setup()
{
  size(1000,800);
  smooth();
}

float r = 60;
float vx = random(1,3);
float vy = random(1,3);
float dx = 3;
float dy = 3;
// float X = random(r, width-r);
// float Y = random(r, height-r);
float X = width / 2;
float Y = height / 2;
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

void mouseClicked()
{
  X = mouseX;
  Y = mouseY;
  vx = random(1,3);
  vy = random(1,3);
}
