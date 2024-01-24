import controlP5.*;

ControlP5 cp5;

TemperatureData [] dataArray = null;

boolean Show_Max_Temp = true;
boolean Show_Min_Temp = true;
boolean Show_Snow_Fall = false;
boolean January = true;
boolean February = true;
boolean March = true;
boolean April = true;
boolean May = true;
boolean June = true;
boolean July = true;
boolean August = true;
boolean September = true;
boolean October = true;
boolean November = true;
boolean December = true;

void setup () {
  FileIO file = new FileIO();
  dataArray = file.readFile();
  size (1300, 750);
cp5 = new ControlP5 (this);           
  cp5.addButton("Bar_Chart").setPosition(20, 20).setSize (70, 50);
  cp5.addButton("Scatter_Point_Plot").setPosition(100, 20).setSize(70, 50);
  cp5.addToggle("Show_Max_Temp").setPosition(20, 80).setSize(70,50);
  cp5.addToggle("Show_Min_Temp").setPosition(100, 80).setSize(70,50);
  cp5.addToggle("Show_Snow_Fall").setPosition(580, 20).setSize(70,50);
  cp5.addToggle("January").setPosition(200, 20).setSize(50, 30);
  cp5.addToggle("February").setPosition(260, 20).setSize(50, 30);
  cp5.addToggle("March").setPosition(320, 20).setSize(50, 30);
  cp5.addToggle("April").setPosition(380, 20).setSize(50, 30);
  cp5.addToggle("May").setPosition(440, 20).setSize(50, 30);
  cp5.addToggle("June").setPosition(500, 20).setSize(50, 30);
  cp5.addToggle("July").setPosition(200, 70).setSize(50, 30);
  cp5.addToggle("August").setPosition(260, 70).setSize(50, 30);
  cp5.addToggle("September").setPosition(320, 70).setSize(50, 30);
  cp5.addToggle("October").setPosition(380, 70).setSize(50, 30);
  cp5.addToggle("November").setPosition(440, 70).setSize(50, 30);
  cp5.addToggle("December").setPosition(500, 70).setSize(50, 30);
}

void draw(){
}

void Bar_Chart() {
  BarChart barchart = new BarChart();
  barchart.drawBarChart();
}

void Scatter_Point_Plot() {
  ScatterPointPlot scatterchart = new ScatterPointPlot();
  scatterchart.drawScatterChart();
}

void drawAxis() {
  stroke(0);
  fill(255);
  line(50, 200, 50, 700);
  line(50, 450, 1550, 450);
  int y = 200;
  int temp = 25;
  for(int i = 0; i < 11; i++) {
    textAlign(RIGHT);
    text(temp, 50, y);
    y += 50;
    temp -= 5;
  }
  int year = 1991;
  int xAxis = 106;
  for(int i = 0; i < 15; i++) {
    textAlign(CENTER,TOP);
    text(year, xAxis, 450);
    year+=2;
    xAxis += 72;
  }
  strokeWeight(1);
  fill(255,0,0);
  square(1100,20,15);
  fill(0,0,255);
  square(1100,50,15);
  fill(#00B22B);
  square(1100,80,15);
  fill(0);
  textAlign(LEFT);
  text("Maximum Temperature", 1120, 33);
  text("Minimum Temperature", 1120, 63);
  text("Snow Fall", 1120, 93);
}
