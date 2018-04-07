public class Nave {
  float x;
  float y;
  float vx = 0.01;
  float vy = 0;
  float a = 0.1f;
  float diametro = 100;

  //direccion
  boolean izquierda = false;
  boolean derecha = false;
  boolean arriba = false;
  boolean abajo = false;

  public void dibujar() {
    fill(255, 0, 0);
    ellipse(width/2, height/2, 100, 100);

    fill(0, 20, 255, 200);
    ellipse(width/2, height/2, 20, 20);

    fill(0);
    ellipse(width/2+40, height/2, 50, 50);
    ellipse(width/2-40, height/2, 50, 50);
    ellipse(width/2, height/2+40, 50, 50);
    ellipse(width/2, height/2-40, 50, 50);

    fill(0, 255, 26); 
    ellipse(width/2+30, height/2, 10, 10);
    ellipse(width/2-30, height/2, 10, 10);
    ellipse(width/2, height/2+30, 10, 10);
    ellipse(width/2, height/2-30, 10, 10);

    dibujarMotores();
    mover();
  }

  public float getX() {
    return x;
  }

  public float getY() {
    return y;
  }

  public void mover() {
    x = x + vx;
    y = y + vy;

    if (izquierda) {
      vx = vx + a;
    }
    if (derecha) {
      vx = vx - a;
    }
    if (arriba) {
      vy = vy + a;
    }
    if (abajo) {
      vy = vy - a;
    }
  }

  public void dibujarMotores() {
    noStroke();
    if (izquierda) {
      fill(0, 0, 255, 100);
      ellipse(width/2+diametro/1.5, height/2, diametro/2, diametro/4 );
    }
    if (derecha) {
      fill(0, 0, 255, 100);
      ellipse(width/2-diametro/1.5, height/2, diametro/2, diametro/4);
    }
    if (arriba) {
      fill(0, 0, 255, 100);
      ellipse(width/2, height/2+diametro/1.5, diametro/4, diametro/2);
    }
    if (abajo) {
      fill(0, 0, 255, 100);
      ellipse(width/2, height/2-diametro/1.5, diametro/4, diametro/2);
    }
  }
}