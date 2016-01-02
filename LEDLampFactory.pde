class LEDLampFactory {

  PApplet sketch;
  public LEDLampFactory(PApplet sketch) {
    this.sketch = sketch;
  }

  public void initStandardLEDLamp() {
    int xres = 51, yres = 8, scale = 20;
    new PixelMapper(sketch, xres, yres, scale);
  }
  
  public void initDoubleLEDLamp() {
    int xres = 51, yres = 16, scale = 20;
    new PixelMapper(sketch, xres, yres, scale);
  }
}