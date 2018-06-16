import peasy.*;
PeasyCam cam;

float i=0;
float z=0;
float d;
float n;
int z1;

//Used to select one of the preselected Cycloid patterns//
int h=2;

void setup() {
  switch(h) {
  case 0 :
    d=5;
    n=7;
    break;
  case 1 :
    d=213;
    n=357;
    break;
  case 2 :
    d=184;
    n=342;
    break; 
  default:
    d = (int)random(1, 500);
    n = (int)random(1, 500);
  }
  size(1000, 1000, P3D);
  cam = new PeasyCam(this, 0, 0, 0, d*50);
  colorMode(HSB, 100);

  //Prints the variables of the produced pattern//
  println(d+"  "+n);

  background(0);
  smooth();
  noCursor();
}

void draw() {

  float k = n / d;

  background(100);

  translate(0, 0, 0);
  beginShape();

  noFill();

  for (float a = 0; a < TWO_PI * d; a += 0.02) {
    float r = 200 * cos(k * a);
    float x = r * cos(a);
    float y = r * sin(a);

    if (a<(d*TWO_PI/2)) {
      z+=0.3;
    }

    if (a>(d*TWO_PI/2)) {
      z-=0.3;
    }
    stroke(i, random(80, 90), random(80, 100));
    strokeWeight(random(1, 1.7));
    vertex(x, y, z);
  }

  //Option to invert the colors scheme for more variety//
  //filter(INVERT);

  endShape(CLOSE);
  i=4;

  //Moving forward//
  if (keyPressed) {
    z1+=25;
    z=z1;
  } else {  
    z=z1;
  }
  //saveFrame("port/vid_######.jpg");
}