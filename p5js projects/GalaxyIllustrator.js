var count = 0;
var X, Y, pX, pY;
var myStar = [];
var xpoint=[];
var ypoint=[];
var mic;

function setup(){
var canvas = createCanvas(windowWidth, windowHeight);
  background(0);
for(var j=0;j<myStar.length;j++){
myStar[j]= new Stars();
fill(255);
    colorMode(HSB);
}
mic = new p5.AudioIn();
 mic.start();
    micLevel = mic.getLevel(); 
}

function draw() {
    //ellipse(random(windowWidth),random(windowHeight),0.2,0.2);
    noFill();
    stroke(random(225),random(225),random(225));
    micLevel = mic.getLevel(); 
       console.log(micLevel);
    //var r1=micLevel
    ellipse(random(width/micLevel-100), constrain(height-micLevel*height*5, 0, height), micLevel*120, 4);
    
//ellipse(random(width), random(height), 200/micLevel,200/micLevel);
    fill(255);
for(var j=0;j<myStar.length;j++){
    myStar[j].display();
  }
  
    if (keyIsPressed == true) {
    count = 0;
  }

  if (mouseIsPressed == true) {  
      pX = pmouseX;
      pY = pmouseY;
      ellipse(mouseX, mouseY, 4, 4);
    if (count < 1) {
      count++;
    } else {
      stroke(random(255),random(130),200);
      strokeWeight(1);
      line(pX, pY, X, Y);
    } mouseIsPressed = false; 
  }
    
 //fill(255);
}

function mouseReleased() {
  X = mouseX;
  Y = mouseY;
}

function Stars(){
  var x=random(width);
  var y=random(height);


 this.display=function(){
  stroke(random(255));
  point(x,y);
}
}