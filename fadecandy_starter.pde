
void setup() {
  new LEDLampFactory(this).initStandardLEDLamp();
  size(1020, 160, P2D); // sizex = x * scale, sizey = y * scale 
}

void draw() {
  background(0);
  rect(mouseX - 10, mouseY - 10, 20, 20);
}