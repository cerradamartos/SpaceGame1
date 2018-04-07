Fondo fondo;
Nave nave;
Meteorito meteorito;

void setup() {  
  fullScreen();
  fondo = new Fondo();
  
  nave = new Nave();
  
  meteorito = new Meteorito();
}

void draw() {
  float x = nave.getX();
  float y = nave.getY();
  fondo.setPosicion(x, y);
  fondo.dibujar();
  meteorito.dibujar();
  meteorito.setPosicion(x, y);
  nave.dibujar();
}

void keyPressed() {
  if (key == 'a') {
    nave.izquierda = true;
  }
  if (key == 'd') {
    nave.derecha = true;
  }
  if (key == 'w') {
    nave.arriba = true;
  }
  if (key == 's') {
    nave.abajo = true;
  }
}

void keyReleased() {
  if (key == 'a') {
    nave.izquierda = false;
  }
  if (key == 'd') {
    nave.derecha = false;
  }
  if (key == 'w') {
    nave.arriba = false;
  }
  if (key == 's') {
    nave.abajo = false;
  }
}