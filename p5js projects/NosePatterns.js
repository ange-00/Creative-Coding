var drops = [];
var mic;
var count = 0;
var X, Y, pX, pY;
var myStar = [];
var xpoint=[];
var ypoint=[];

function setup() {

  createCanvas(windowWidth, windowHeight);
   
  for (var i = 0; i < 500; i++) {
    drops[i] = new Drop();
  }
 mic = new p5.AudioIn();
 mic.start();
    micLevel = mic.getLevel(); 
}

function draw() {
    background(10);
        for(var j=0;j<myStar.length;j++){
    myStar[j].display();
            fill(0);
  }
  
    micLevel = mic.getLevel(); 
       console.log(micLevel);
    noFill(); 
ellipse(width-micLevel*width*3, constrain(height-micLevel*height*5, 0, height), micLevel*8, 4);
    
    //noStroke();
  for (var i = 0; i < drops.length; i++) {
    drops[i].fall();
    drops[i].show();
  }

 
}


function Drop() {
  this.x = random(width);
  this.y = random(-100, -0);
  this.z = random(10, 0);
  this.speed = map(this.z, 0, 2, 10, 2);
  
  this.fall = function() { 
    this.y = this.y + this.speed;
    var grav = map(this.z, 0, 30, 0, 2);
    this.speed = this.speed + grav;

    if (this.y > height) {
      this.y = random(this.z, -100);
      this.speed = map(this.z, 0, 20, 4, 10);
    }
  }

  this.show = function() {
    var thick = map(this.z, 0, 20, 1, 3);
    strokeWeight(1);
    stroke(random(255), 300, 200,200);
    ellipse(this.x, this.y, 0.2, 300);
  }
}


