public class Fondo {
  float x;
  float y;

  float[] xEstrellas;
  float[] yEstrellas;
  int numEstrellas=1000;

  //constructor
  public Fondo() {
    xEstrellas = new float[numEstrellas];
    yEstrellas = new float[numEstrellas];
    for (int i=0; i<numEstrellas; i++) {
      xEstrellas[i] = random(width);
      yEstrellas[i] = random(height);
    }
  }

  public void dibujar() {
    background(0); 

    // dibujar estrellas
    noStroke();
    fill(255);
    for (int i = 0; i<numEstrellas; i ++) {
      float xFinal = (xEstrellas[i] + x + 1000000) % width;
      float yFinal = (yEstrellas[i] + y + 1000000) % height;
      ellipse(xFinal, yFinal, 2, 2);
    }
  }
  public void setPosicion(float x, float y) {
    this.x = x;
    this.y = y;
  }
}