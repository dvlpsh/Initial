int rows,cols;
int scl = 20;
int w = 2000;
int h = 1000;

float increment = 0.2;

//PImage img;

float flying = 0;

float[][] terrain;

void setup()
{
  size(600, 600, P3D); 
  //img = loadImage("greentin.jpeg");
  
  cols = w/scl; 
  rows = h/scl;
  terrain = new float[cols][rows];
  
  
}

void draw()
{
   background(0); 
   noStroke();
   fill(34,139,34);
   
   
  flying-=0.05; 
   
   
  float yoff=flying;
  for(int y=0;y<rows;y++)
   {
      float xoff=0;
      for(int x=0;x<cols;x++)
      {
          terrain[x][y] = map(noise(xoff, yoff), 0, 1, -150, 150);
          xoff+=0.1;
      }
      yoff+=0.1;
   }

   
   translate(width/2, height/2);
   rotateX(PI/3);
   translate(-w/2, -h/2);
   
   lights();
   for(int y=0; y<rows-1; y++)
   {
     beginShape(TRIANGLE_STRIP);
     //texture(img);
      for(int x=0; x<cols; x++)
      {
          vertex(x*scl, y*scl, terrain[x][y]);
          vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
          //rect(i*scl, j*scl, scl, scl );
      }
      //texture(img);
      endShape();
   }
   
}
