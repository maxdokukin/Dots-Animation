int DOT_NUM = 300;
int CON_RAD = 20;
int MAX_CON = 1000;
long t = millis();

Lines lines = new Lines();
Dot dots[]= new Dot[DOT_NUM];

void setup()
{
  size(1350, 850);
  background(0);
  frameRate(30);
  genDots();
}


void draw(){
  
  clear();
  
  lines.tick();
    
  for(int i = 0; i < DOT_NUM; i++)
     dots[i].tick();
    
    
    if(millis() - t > 100000){
      
      clear();
      t = millis();
      genDots();
      }
  
}

 void genDots()
  {
    for(int i = 0; i < DOT_NUM; i++)
      dots[i] = new Dot();
  } 
