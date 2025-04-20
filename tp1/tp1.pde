PImage llave;

void setup() {
  size(800, 400);
  llave = loadImage("llave.jpg");
}

void draw() {
  background(200);
  image(llave, 0, 0);
  
  fill(#484524); 
  noStroke();
  rect(586, 150, 25, 180); 
  fill(#484524);
  ellipse(599, 330, 26, 20);
 
  fill(#484524);
  ellipse(600, 120, 100, 70); 
  
  fill(200);
  ellipse(600, 120, 65, 40); 
  
  fill(#484524);
   rect(587, 280, 70, 35); 
  fill(200);
   rect(647, 292, 10, 10); 
   
}
