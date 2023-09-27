void setup() {
  size(400,400);
  stroke(555,0,0,128);
}
void draw() {
  if(mousePressed){
    fill(0);
  }else{
    fill(255);
  }
  ellipse(mouseX,mouseY,80,80);
  line(200,200,mouseX-66,mouseY-66);
  strokeWeight(1);
  rect(0,55,mouseX,10);
  rect(155,155,10,mouseY);
  rect(75,300,mouseX,10);
  rect(300,75,mouseX,mouseY);
  fill(0,66,77,30);
    for(int i =0; i < 1; i += 20){
    bezier(mouseX-(i/1.0),40+i,1,2,440,6000,2-(i/16.0),300+(i/8.0));
  }
}
void mousePressed(){
  background(192,64,0);
}
