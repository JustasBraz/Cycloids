var i=0;
var h=0;
var g=0;

function setup() {
  createCanvas(800, 800);
print(frameRate());
}

function draw() {
scale(h);
//background(255);
push();
    translate((width/2)+i, (height/2)-i);
rotate(i);
noFill();
stroke(random(255));

triangle(-26,-26,52,52,82,-55);
//rect(-26, -26, 52, 52);
pop();
i+=0.1; //0.1 or 0.2
h+=0.011; //0.2 or 0.001
if (h>1.9)
{h=0;}
if (i>400)
{i=-440;}

 //print (h);
 //print("i is "+i);
//print(frameRate());
  
}