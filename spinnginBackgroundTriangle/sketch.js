//Alternatively -340
var i = 0;
var h = 0;
var g = 0;

function setup() {
  createCanvas(800, 800);

}

function draw() {
  scale(h);
  
  push();

  translate((width / 2) + i, (height / 2) - i);
  rotate(i);
  noFill();
  stroke(random(255));
  triangle(-6, -6, 32, 32, 62, -35);

  pop();

  i += 0.1;

  //Alternatively 0.2 or 0.001 changing this is cool
  h += 0.01;

  if (h > 1.9) {
    h = 0;
  }
  if (i > 400) {
    i = -440;
  }


}
