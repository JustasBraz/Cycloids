import processing.pdf.*;
float i=0;//-340
float h=0;
float g=0;
boolean recordPDF;
void setup() {
  size(800, 800,P2D);
  //fullScreen(P3D);
//print(frameRate());
background(0);
}

void draw() {
     
  saveFrame("Output_quad/quad_######.png");
  
   if (recordPDF) {
    beginRaw(PDF, "frame-####.pdf"); 
  }
scale(h);

//background(255);
pushMatrix();
    translate((width/2)+i, (height/2)-i);
rotate(i);
noFill();
stroke(random(255));
//triangle(-6,-6,32,32,62,-35);
//triangle(-26,-26,52,52,82,-55);
rect(-26, -26, 52, 52);
popMatrix();
i+=random(0.3); //0.1 or 0.2
h+=random(0.1); //0.2 or 0.001 changing this is cool
if (h>1.9)
{h=0;}
if (i>400)
{i=-440;}

 //print (h);
 //print("i is "+i);
//print(frameRate());
if (recordPDF) {
    endRaw();
  recordPDF = false;
  }
  
}
void keyPressed() {
  
   if (key == 'a') {
     recordPDF = true;
        }     
}