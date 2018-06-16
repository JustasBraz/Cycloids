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

  triangle(-26, -26, 52, 52, 82, -55);

  pop();
  i += 0.1;

  //Spin property, alternatively 0.2 or 0.001//
  h += 0.011;
  if (h > 1.9) {
    h = 0;
  }
  if (i > 400) {
    i = -440;
  }

}
