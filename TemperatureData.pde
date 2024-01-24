class TemperatureData {
  Date date = new Date();
  float minTemp;
  float maxTemp;
  float snowFall;
  
  TemperatureData(int a, int b, float c, float d, float e) {
    date.year = a;
    date.month = b;
    maxTemp = c;
    minTemp = d;
    snowFall = e;
  }
}
