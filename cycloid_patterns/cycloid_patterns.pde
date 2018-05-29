
import peasy.*;
float i=0;
float z=0;
int h=2;
float d;
float n;
int z1;

//float speed=;  //213n357 incredible or184and432
//float d=213; //basic ex
//float n=357; //basic ex         7and90   19and 70  936/910  380/376  293/291  113/351  484/304/rect,fil0    116/357
//float d=329;
//float n=322; // /94 199  /491/359  //384n2
//float d = (int)random(1,500);
//float n = (int)random(1,500);
PeasyCam cam;
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
   d = (int)random(1,500);
   n = (int)random(1,500);
}
  size(1000, 1000, P3D);
   cam = new PeasyCam(this,0,0,0, d*50);
   colorMode(HSB, 100); //HSB, 100
   println(d+"  "+n);
   background(0);
   smooth();
   noCursor();
}

void draw() {

// println(frameRate);
  float k = n / d;
 
  background(100);

  translate(0,0,0);
  beginShape();
 
  //stroke(255);
  noFill();
  
  for (float a = 0; a < TWO_PI * d; a += 0.02) {
    float r = 200 * cos(k * a);
    float x = r * cos(a);
    float y = r * sin(a);
   // float z=10*a;
      if (a<(d*TWO_PI/2)){
    z+=0.3;}
    
      if (a>(d*TWO_PI/2)){
    z-=0.3;}
  stroke(i, random(80,90),random(80,100)); //(z/100)
  strokeWeight(random(1,1.7));
    vertex(x, y, z);
    
   // stroke((d*n*1.5)/z, 100,50,10);
   // strokeWeight(random(3,4));
   // point(x+random(-2,2), y+random(-2,2), z);
           
  }
//println(i);
//filter(INVERT);

  endShape(CLOSE);
 i=4;
 // z+=25;

  if (keyPressed){
    
        z1+=25;
        z=z1;
  }
  else{  z=z1;}
 //saveFrame("port/vid_######.jpg");
}