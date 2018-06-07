//Setting up floats 
float n= 0; //size of phyllotaxis
float c = 9; //spacing between circles 
float hue = 0; //rate of how much the colour changes 

void setup() {
    size (400, 400);
  colorMode(HSB, 360, 255, 155); 

}

void draw() {
  background(0); 
  translate (width/2, height/2); //center the phyllotaxis
  rotate(n * 0.3); 
  for (int i = 0; i < n; i++) {
    float a = i * radians(100); 
    float r = c * sqrt (i);
    float x = r * cos (a); 
    float y = r * sin(a); 

    float hu = i + hue; 
    hu = i/3.0 % 360; 
    fill(hu, 255, 255);
    noStroke();
    ellipse(x, y, 4, 4);
  }

  n += 5;
  hue += 5;
}
