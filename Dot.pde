class Dot
{
  float x = random(width);
  float y = random(height);
  float size = random(random(random(5, 30)));
  double vol = (size / 2) * (size / 2) * PI;
  int col = int(map(size, 1, 30, 50, 255));
  ArrayList<Integer> drainFrom = new ArrayList<Integer>();
  
  
  void tick(){
    
    if(size > 2){
      
      show();
      drainTick();
    }
    
    updateSize();
    
    
    
  }
  
  void show(){

    stroke(this.col);
    fill(col);
    ellipse(x, y, size, size);
    
  }
  
  
  void updateSize(){
    
    size = sqrt((float) (vol / PI)) * 2;
  }
  
  void addDrain(int ind){
    
    drainFrom.add(ind);
  }
  
  void drainTick(){
    
    double gain = 0;
    
    for(int i : drainFrom)
      gain += dots[i].drain();      
          
    vol += gain;
    
    while(drainFrom.size() >= MAX_CON)
      drainFrom.remove(0);
  }    
  
  double drain(){
    
    if(size > 2){
      
      double lose = PI * (size / 2) * (size / 2) * 0.05;
        
      vol -= lose;
    
      return lose;
    }
    else
      return 0;
    
  }
  
}
