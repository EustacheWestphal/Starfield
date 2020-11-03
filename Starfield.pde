/* @pjs preload="/static/uploaded_resources/p.36143/ufo2.png"; */
Starfield[]star = new Starfield[100];
double x = 200;
double y = 200;
void setup()
{   
     size(400,400);
     for(int i = 0; i < star.length; i++)
      {
         star[i] = new Starfield(x,y);
         star[0] = new OddballStarfield(x,y);
      }   
}
void draw()
{
    background(0);
    for(int i = 0; i < star.length; i++)
     {
         star[i].show();
         star[i].move();
         star[0].show();
         star[0].move();
     }    
}
class Starfield
{  
     PImage img;
      double myX;
      double myY;
     double myAngle;
     double mySpeed;
     ouble mySize;  
     int random;  
     Starfield(x,y)
     {
         myX = x;
         myY = y;
         myAngle = Math.random()*(2*Math.PI);
         mySpeed = Math.random()*5 + 1.5;
         random = (int)(Math.random()*3)-1;
     }
     void show()
     {
         mySize = dist(200,200,myX,myY) / 35;
         fill(255);
         noStroke;
         ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);  
     }
     void move()
     {
          myX = myX + Math.cos(myAngle) * mySpeed;
          myY = myY + Math.sin(myAngle) * mySpeed;
          if(myX > 400 || myY > 400)
          {
              myX = 200;
              myY = 200;
          }
          else if(myX > 400 || myY > 400)
          {
              myX = 200;
              myY = 200;
          }
          else if(myX < 0 || myY < 0)
          {
              myX = 200;
              myY = 200;
          }
          else
          {
          }
     }        
}
class OddballStarfield extends Starfield
{  
    OddballStarfield(x,y)
    {
        myX = x;
        myY = y;
        mySpeed = 10;
        myAngle = 0;
        mySize = 0;
        img = loadImage("/static/uploaded_resources/p.36143/ufo2.png");    
    }
    void show()
    {
        image(img, (int)myX, (int)myY);
    }
    void move()
    {
         if(mouseX > myX && mouseY > myY)
        {
            myX = myX + 0.01;
            myY = myY + 0.01;
        }
        else if(mouseX < myX && mouseY < myY)
        {
            myX = myX - 0.01;
            myY = myY - 0.01;
        }
        else if(mouseY < myY && mouseX > myX)
        {
            myY = myY - 0.01;
            myX = myX + 0.01;
        }
        else if(mouseY > myY && mouseX < myX)
        {
            myY = myY + 0.01;
            myX = myX - 0.01;
        }
        else
        {
        myX = myX - 0.01;
        myY = myY + 0.01;
        }
          if(myX > 500 || myY > 500)
          {
              myX = 200;
              myY = 200;
          }
          else if(myX > 500 || myY > 500)
          {
              myX = 200;
              myY = 200;
          }
          else if(myX < 0 || myY < 0)
          {
              myX = 200;
              myY = 200;
          }
          else
          {
          }
    }
}

