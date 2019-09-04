Star stars[] = new Star[2555]; //these many number of stars look great!

float speed;

void setup()
{
  size(1000,1000);//setting up window size for output
  for(int i=0; i<stars.length; i++)
     stars[i] =  new Star(); //creating a new star object 
}

void draw()
{
    speed = map(mouseX, 0, width, 0, 1000); //MAP??
    background(0);//black background
    translate(width/2, height/2); //shifting origin to center of window, else its from top left corner
    
    for(int i=0;i<stars.length;i++)
    {
       stars[i].update();
       stars[i].show();
    }
}
