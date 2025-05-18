

int miVariable = 1000;
int pantalla, tiempo, suma, diametro, animacion, limiteDeAnimacion, opacidad, tamTexto;

boolean ultimaPantalla;
color colorDelBoton, colorDelBotonCircular;
float textoX1 = 0; 
float textoY2 = 480; 
float textoX0 = 0;


//String texto= "Twister! el juego más diver!! ";
PImage imagen1, imagen2, imagen3;
PFont fuenteBold;

void setup() { 
  
 size (640, 480);
 fuenteBold = createFont ("Arial Bold", 24);
 textFont(fuenteBold);
 textSize (24);
   animacion= 0;
     limiteDeAnimacion= 10;
     opacidad = 0;
     textoX0 = 0;
  background (0);
  println (frameCount); 
  imagen1 = loadImage("foto1.jpeg");
  imagen2= loadImage("foto2.jpeg");
  imagen3= loadImage("foto3.jpeg");
  pantalla = 0;
  tiempo = 10;
  suma = 1;
  diametro = 50;
  ultimaPantalla = false;
  colorDelBoton = color(120, 120, 120);
  colorDelBotonCircular = color(120, 120, 120);
}

void draw() {
 
  if (pantalla == 0) {
   miVariable= frameCount/ 8;
   //miRect= random(10, 180);
   println(frameCount); 
   background (0, #2F0D81,#2F0D81);
   
   image(imagen1, 0, 0);
   fill (255);
   push();
  
  // textFont(fuenteBold);
    text("Tapiz al suelo, se gira la ruleta y comienza el juego", textoX0, animacion, height/2); 
    textoX0 += 0.2;
  //  textFont(fuenteBold);
    pop(); 
    
      animacion++; 
  
  } else if (pantalla == 1) {
    textoX1 += 1;
    
    push();
    background(0, #2F0D81,#2F0D81);
    image(imagen2, 0, 0);
    fill(#DEFFE7);
  
 //   textFont(fuente2);
    textSize(24);
    text("Ruleta que elige al azar tu proximo movimiento", textoX1, 400);
   
    pop();
  } else if (pantalla == 2) {
    textoY2 -= 1; 
    background(0, 0, 0);
    image(imagen3, 0, 0);
 //   textFont(fuente1);
    textSize(24);
    text("Mientras los cuerpos se entrelazan buscando equilibrio.", 7, textoY2);
   
  //  textFont(fuente2);
     textSize(24);
   
        animacion++; 
    if (ultimaPantalla == true) {
      push();

      fill(#FF2424);
      circle(100, 400, diametro);

      fill(0);
      pop();
    }
  } else {
    background(0, #2F0D81,#2F0D81);
    
  }

  if (ultimaPantalla == false) {
    tiempo = tiempo  + suma;
  }

  if (tiempo >= 300 && pantalla != 3) {
    tiempo = 0;
    if (pantalla != 2) {
      pantalla++;
    } else if (pantalla == 2) {
      ultimaPantalla = true;
    }
  }
  println(frameCount, tiempo);
}

void mouseClicked() {
 
  if (ultimaPantalla == true) {
    if (dist(100, 400, mouseX, mouseY) < diametro/2) {
      pantalla = 0;
      tiempo = 10; 
      suma = 1;
      ultimaPantalla = false;
      miVariable = 0;
      animacion = 0;
      
      textoX0 = 0;
      textoX1 = 0;
      textoY2 = 480;
    }
  }
}

void mouseMoved() {
  if (ultimaPantalla == true) {

    if (dist(160, height/2, mouseX, mouseY) < diametro/2) {
        colorDelBotonCircular = color(#FF2424);

    } else {
        colorDelBotonCircular = color(#FF2424);

    }
  }
}
