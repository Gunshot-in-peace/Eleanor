void setup(){
  size(600,600);
  smooth();
  background(216,191,200,10);
}
void draw(){
  if(mousePressed){
    fill(230,230,250);
    rect(random(0,600),random(0,600),20,20);
  }else{
    fill(173,216,230,10);
    rect(mouseX,mouseY,mouseX+20,mouseY+100);
  }
noStroke();
}
