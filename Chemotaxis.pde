Walker[] mykull;
boomer[] lily;
 void setup()   
 {     
   size(300, 300);
   mykull = new Walker[800];
   for (int i = 0; i < mykull.length; i++)
   {
     mykull[i] = new Walker();
   }
   
   lily = new boomer[800];
   for (int i = 0; i < lily.length; i++)
   {
     lily[i] = new boomer();
   }
 }   
 
 void draw()   
 {      
   background(0);
   for (int i = 0; i < mykull.length; i++)
   {
   mykull[i].show();
   mykull[i].move();
   }
   
   for (int i = 0; i < lily.length; i++)
   {
   lily[i].show();
   lily[i].move();
   }
 }  
///////////////////////////////
 class Walker    
 {     
   int myColor;
   int myX, myY;
   Walker()
   {
   myX = myY = 1;
   myColor = color((int)(Math.random()*255) +1, (int)(Math.random()*255) +1, (int)(Math.random()*255) +1);
   }
   void move()
   {
   myX = myX + (int)(Math.random()*9) -4;
   myY = myY + (int)(Math.random()*9) -4;
   }
   void show()
   {
   fill(myColor);
   ellipse(myX, myY, 10, 10);
   }
 }
//////////////////////////////
class boomer    
 {     
   int myColor;
   int myX, myY;
   boomer()
   {
   myX = myY = 1;
   myColor = color(255, 148, 187);
   }
   void move()
   {
   myX = myX + (int)(Math.random()*9) -4;
   myY = myY + (int)(Math.random()*9) -4;
   }
   void show()
   {
   fill(myColor);
   rect(myX, myY, 10, 10);
   }
 }
