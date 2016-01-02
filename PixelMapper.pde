class PixelMapper {

  int xres, yres, scale;
  int port;
  String server;
  OPC opc;
  DisposeHandler dh;

  public PixelMapper(PApplet sketch, int xres, int yres, int scale) {
    this("127.0.0.1", 7890, sketch, xres, yres, scale);
  }

  public PixelMapper(String server, int port, PApplet sketch, int xres, int yres, int scale) {
    this.server = server;
    this.port = port;
    this.xres = xres;
    this.yres = yres;
    this.scale = scale;
    this.dh = new DisposeHandler(sketch);
    this.opc = new OPC(sketch, "127.0.0.1", 7890);
    for (int y = 0; y < yres; y++) {
      opc.ledStrip(y * xres, xres, width * 0.5, (y + 0.5) * scale, scale, 0, false);
    }
  }

  public class DisposeHandler {
    DisposeHandler(PApplet pa) {
      pa.registerMethod("dispose", this);
    }

    public void dispose() {
      for (int i = 0; i < xres * yres; i++) {
        opc.setPixel(i, 0);
      }
      opc.writePixels();
    }
  }
}