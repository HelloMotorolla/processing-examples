/**
 * Load and Display an OBJ Shape. 
 * 
 * The loadShape() command is used to read simple SVG (Scalable Vector Graphics)
 * files and OBJ (Object) files into a Processing sketch. This example loads an
 * OBJ file of a rocket and displays it to the screen. 
 */


PShape MM_Body_booled2;

float ry;
  
void setup() {
  frameRate(30); 
  size(640, 360, P3D);
    
 // MM_Body_booled2 = loadShape("MM_Body_booled2.obj");
   //MM_Body_booled2.setFill(color(0, 125, 125));  //RGB
   // Add shininess
   //MM_Body_booled2.setSpecular(color(0,125,125));
   //MM_Body_booled2.setShininess(10.0);


  // Color each child shape differently
  MM_Body_booled2 = loadShape("MM_Body_booled2.obj");
   for (int i = 0; i < MM_Body_booled2.getChildCount(); i++){
    PShape child = MM_Body_booled2.getChild(i);
    child.setFill(color(random(200), random(100), random(255)));
   }


}



void draw() {
  background(0);
  lights();
  
  translate(width/2, height/2 + 50, 50);
  rotateZ(-45);
  rotateY(ry);
  rotateX(45);
  shape(MM_Body_booled2);
  
  ry += 0.01;
  println(frameRate);
}
