
  void setup(){
    size(300,300);
    background(#F7FBFC);
}

void draw(){
   //rect(mouseX,mouseY,100,100);
   if(mousePressed){
      line(mouseX,mouseY,pmouseX,pmouseY);
   }
}

void keyPressed(){
  if(key == '1') stroke(255,0,0);
  if(key == '2') stroke(0,255,0);
}
