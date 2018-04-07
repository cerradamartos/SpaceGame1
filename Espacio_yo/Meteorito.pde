public class Meteorito {
  float x2 = random(500);
  float y2 = random(800);
  float x = 0;
  float y = 0;
  float vx = 0.5;
  float vy = 0.5;
  float r = random(10,100);
  float rx;
  float ry;


  //constructor
  public Meteorito() {
  }

  public void dibujar() {
    fill(220, 220, 220);
    x2 = x2+vx;
    y2 = y2+vy;
    ellipse(x2+x, y2+y, r, r);
    
    double d = calcularDistancia(width/2, height/2, x2+x, y2 +y);
    
    if (d > width){
      rx =1 + random(width * 1.2);
      ry =1 + random(height * 1.2);
      x2 = rx-x;
      y2 = ry-y;
      vx = (width/2 - rx)/20;
      vy = (height/2 - ry)/20;
    }
    
  }

  public void setPosicion(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  public double calcularDistancia(float x1, float y1, float x2, float y2){
    double d = 0;
    float c = x2 - x1;
    float c2 = y2 - y1;
    d = sqrt(c * c + c2 * c2);
    return d;
  }
}