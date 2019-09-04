class Star
{
   float x;
   float y;
   float z;
   float pz; /*previous location of z as the stars come closer to the screen the X and Y coordinates remain the same,
   it travels along Z axis to reach the screen. So effectively onlz Z coordinate changes.*/
   
   
   Star()
   {
      init();
   } 
   
   void init()
   {
        x = random(-width,width);
        y = random(-height,height);
        z = random(width);
        pz=z;
   }
   
   void update()
   {
       z-=speed;
       
       if(z<1)
       {
          init();
          pz = z; // the previous Z now is stored in pz before z changes again
       }
   }
   
   void show()
   {
      fill(255);
      noStroke();
      
      float sx = map(x/z, 0, 1, 0, width);
      float sy = map(y/z, 0, 1, 0, width);
      
      float r = map(z, 0, width, 16, 0);
      //ellipse(sx, sy, r, r);

      float px = map(x/pz, 0, 1, 0, width);
      float py = map(y/pz, 0, 1, 0, height);
      
      pz = z;
      
      stroke(255);
      line(px, py, sx, sy);
      
      ellipse(sx,sy,r,r);
   }
}
