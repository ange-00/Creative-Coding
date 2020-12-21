//Angela Wu
//week7_assignment
float y1,y2,y3;
float x1,x2,x3;
float r1,r2,r3;
float w,w1,w2,w3,w4=200;
float h,h1,h2,h3,h4=200;
float s=0.2;

void setup(){
  size(500,500);
  background(255);
  
  stroke(0);
  strokeWeight(20);
  rect(0,0,width,height);
  
  x1=random(100,380);
  x2=random(100,380);
  x3=random(100,380);
  y1=random(100,380);
  y2=random(100,380);
  y3=random(100,380);
  r1=random(30);
  r2=random(30);
  r3=random(10,50);
  
}

void draw(){
  fill(255);
  rect(0,0,width,height);
  stroke(200);
  strokeWeight(1);
  fill(232,232,235);
  rect(42,42,414,414);
  noStroke();
for(int i=42; i<458; i+=5){
  float dis= abs(mouseX-i);
  fill(245,216,67, 255-dis);
  quad(i,350,420,42,457,i,i,457);
}
for(int i=42; i<458; i+=5){
  float dis= abs(mouseY-mouseX-i);
  fill(115,204,216, 255-dis);
  quad(190,42,i,i,300,i,42,42);
}
for(int i=42; i<452; i+=5){
  noStroke();
  float dis= abs(mouseX-mouseY+1-i);
  fill(213,78,10,170-dis);
  rect(i,42,10,414);
}
  for(int i=0; i<8; i++){
  Circles c=new Circles(random(120,380),random(120,380), random(120));
  c.dCircle();
  c.move();
  }
  stroke(10);
  strokeWeight(5);
  noStroke();
  fill(0);
  circle(x1,y1,r1);
  circle(x2,y2,r2);
  circle(x3,y3,r3);
  noFill();
  stroke(20);
  strokeWeight(10);
  circle(width/2,height/2,385);
  stroke(10);
  strokeWeight(7);
  rotate(PI/abs(mouseX-mouseY));
  s++;
  line(100,405,370,250);
}

class Circles{
  float x,y,r;
  float vx=random(2);
  float vy=random(2);
  Circles(float xi, float yi, float ri){
    x=xi;
    y=yi;
    r=ri;
  }
  void move(){
     x += vx;
     y += vy;
     if(abs(x-width/2)>65){
       vx=-vx;
     }
     if(abs(y-height/2)>65){
       vy=-vy;
     }
  }
  void dCircle(){
    frameRate(5);
    fill(random(20,255),random(20,205),random(20,255),190);
    ellipse(x, y, r, r);
  }
}
