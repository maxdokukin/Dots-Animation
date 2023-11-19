class Lines{
  
  ArrayList<Line> lines = new ArrayList<Line>();
  
  void tick(){
    
    for(int i = 0; i < 10; i++)
      addLine();
    
    for(Line a : lines)
      a.show();
      
    while(lines.size() >= MAX_CON)
      lines.remove(0);
    
  
  }
  
  void addLine(){
    
   int n1 = round(random(DOT_NUM - 1));
   int n2 = round(random(DOT_NUM - 1));
   int c = 0;
   
   for(; c < 100 && dist(dots[n1].x, dots[n1].y, dots[n2].x, dots[n2].y) > CON_RAD * (dots[n1].size + dots[n2].size); c++){
     
     n1 = round(random(DOT_NUM - 1));
     n2 = round(random(DOT_NUM - 1));
   }
   
   
   if(dots[n1].size > dots[n2].size && dots[n2].size >= 2)
     dots[n1].addDrain(n2);
    else if(dots[n1].size >= 2)
     dots[n2].addDrain(n1);
  
   lines.add(new Line(dots[n1].x, dots[n1].y, dots[n2].x, dots[n2].y, (int) map((dots[n1].size + dots[n2].size), 10, 70, 10, 255))); 
   
  } 
  
}
