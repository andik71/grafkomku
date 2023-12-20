void setup() {
  size(640, 360, P3D);
  noStroke();
}

void draw() {
  background(0);
  
  // Mengatur titik cahaya putih pada posisi (width/2, height/2, 200)
  pointLight(255, 255, 255, width/2, height/2, 200);
  
  // Menggambar dua buah bola
  translate(width/2 - 100, height/2, 0);
  sphere(80);
  
  translate(200, 0, 0);
  sphere(80);
}
