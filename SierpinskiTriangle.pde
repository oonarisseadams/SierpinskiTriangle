public void setup()
{
  background(177, 209, 230);
  size(400, 400);
}


int drag = 600;


public void draw()
{
  sierpinski(30, 370, 350);
}


public void mouseDragged()//optional
{

}


public void mouseClicked()
{
  
}


public void sierpinski(int x, int y, int len) 
{
  if(len <= 10)
  {
    fill(0, 59, 111);
    stroke(0, 59, 111);
    strokeWeight(1);
    triangle(x, y, x + len/2, y - len, x + len, y);
  }
  else 
  {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - (len/2), len/2);

  }
}
