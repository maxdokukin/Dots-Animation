



class Line{
  
  float x1, x2, y1, y2;
  int col;
  
  Line(float x1, float y1, float x2, float y2, int col){
    
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    this.col = col;
  }
  
  
  void show(){
    
   if(col < 50)
     stroke(col, col, 0);
   else if(col < 110)
      stroke(0, 0, col);
   else if(col < 160)
     stroke(0, col, 0);
   else
     stroke(col, 0, 0);
    
   line(x1, y1, x2, y2);
  }
  

  
  

  
}
