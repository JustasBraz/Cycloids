var i=0;

function setup() {
  createCanvas(windowWidth, windowHeight);
frameRate();
}

function draw() {
background(255);
push();
    translate(width/2, height/2);
rotate(i);
rect(-26, -26, 52, 52);
pop();
i+=0.2;
}