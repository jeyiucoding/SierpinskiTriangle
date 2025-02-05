int bc = 10;
public void setup()
{
  size(800,800);
  background(255);
}
public void draw()
{
  sierpinski(100,500,400);
}
public void mouseClicked()//optional
{
  bc+=50;
  background(255);
  sierpinski(100,500,400);
}
public void sierpinski(int x, int y, int len) 
{
   int x1 = x;
   int y1 = y;
   int x2 = x + len;
   int y2 = y;
   int x3 = x + len/2;
   int y3 = y -len;
  if(len <= bc){
    triangle(x1,y1,x2,y2,x3,y3);
    
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
    
}
