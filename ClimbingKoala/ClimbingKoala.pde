//Angela Wu
//Jan 23, 2010
//Week 3 Assiggnment

void setup(){
  size(500,400);
}

float rx=random(400);
float ry=random(300);

void draw(){
int y=mouseY;
float x=y*0.15+135;

//sky
noStroke();
fill(5+x, 30+x, 50+2*x);
rect(0, 0, 500, 400);
//println(5+x, 30+x, 50+2*x);
//star
fill(199.5, 224.55, 439.1);
star(rx, ry, 5, 10, 5); 
star(ry, rx, 5, 10, 5); 
star(rx-50, ry-30, 5, 10, 5); 
//sun or moon
fill(225, 210, 0, 3*y);
circle(400,300-pmouseY,100);
//grass
fill(102, 204, 102);
quad(0, 270, 500, 210, 500, 400, 0, 400);


//belly
noStroke();
fill(192,192,192);
rect(x, y, 85, 90, 35, 45, 44, 54);
fill(205,205,205);
rect(x+13, y+7, 40, 45, 95, 55, 44, 54);

//tree
fill(193, 155, 112);
quad(80, 0, 140, 0, 200, 400, 135, 400);

//ears
fill(192,192,192);
ellipse(x-5, y-35, 55, 55);
ellipse(x+82, y-40, 55, 55);
fill(205,205,205);
ellipse(x-2, y-33, 40, 40);
ellipse(x+79, y-39, 40, 40);

//head
fill(192,192,192);
ellipse(x+40, y-30, 100, 85);

//limbs
ellipse(x-7, pmouseY+27, 25, 25);
ellipse(x+30, y+27, 70, 31);
ellipse(x-2, pmouseY+68, 25, 30);
ellipse(x+33, y+68, 72, 45);
//face
fill(52,25,0);
ellipse(x+40, y-20, 22, 27);
ellipse(x+18, y-30, 10, 10);
ellipse(x+60, y-30, 10, 10); 
}
//draw star(code from Processing.org Reference)
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
