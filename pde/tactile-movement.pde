void setup(){
  size(900,600);
  smooth();
  noFill();
}


void draw(){
  background(255);
  goki(900);
  
}

void goki(int pos){
  float t = frameCount / 30.0;
  for (int i = 0; i < 100; i++){
    bezier(
    pos/2, height,
    pos/2, noise(1, i, t)*height,
    noise(2, i, t)*width, noise(24, i, t)*height,
    noise(3, i, t)*width, random(0, 50)*height
    );
    }
}
