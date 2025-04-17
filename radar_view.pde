import processing.serial.*;

Serial myPort;
int angle = 0;
int distance = 0;

void setup() {
  size(800, 800);
  myPort = new Serial(this, "COM8", 115200);  // Updated to COM8
  myPort.bufferUntil('\n');  // Read data until newline
}

void draw() {
  background(0);
  translate(width/2, height - 100);
  
  fill(0, 255, 0);
  textSize(20);
  text("Radar Visualization", -80, -height/2 + 50);

  drawRadar();

  float rad = radians(angle);
  int x = int(distance * cos(rad));
  int y = int(-distance * sin(rad));

  fill(255, 0, 0);
  ellipse(x, y, 10, 10);
}

void drawRadar() {
  stroke(0, 255, 0);
  noFill();
  
  for (int i = 100; i <= 400; i += 100) {
    ellipse(0, 0, i * 2, i * 2);
  }
  
  line(0, 0, 400, 0);
  line(0, 0, 282, -282);
  line(0, 0, 0, -400);
  line(0, 0, -282, -282);
  line(0, 0, -400, 0);
}

void serialEvent(Serial myPort) {
  String data = myPort.readStringUntil('\n');
  if (data != null) {
    data = trim(data);
    String[] values = split(data, ',');
    if (values.length == 2) {
      angle = int(values[0]);
      distance = int(values[1]);
    }
  }
}
