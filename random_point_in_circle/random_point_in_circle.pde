final int maxIterations = 500;  // that's how fast spraying happens
//
void setup () {
  size (700, 700);
  stroke(255, 2, 2); // red
  frameRate(11);   // delete this later
} // func
//
void draw () {
  //if (mousePressed) {  // for paint
  brush () ;
  //}
} // func
// -------------------------------------------------------
void brush () {
  int width1=300; // that be the width of your brush
  //
  float radx;   // Radius
  float rady;
  float angle1; // angle
  float x;      // result
  float y;
  //
  for (int i=0; i < maxIterations; i++) {
    radx=random(width1);
    rady=random(width1);
    angle1= random(359);
    //
    x=(radx*cos(radians(angle1)))+width/2;
    y=(radx*sin(radians(angle1)))+height/2;
    //
    //x=(radx*cos(radians(angle1)))+mouseX;   // for paint
    //y=(radx*sin(radians(angle1)))+mouseY;   
    //
    point(x, y);
  }
} // func