class ScatterPointPlot {
  int tempCoord = 70;
  int i = 0;
  void drawScatterChart() {
    background (200);
    strokeWeight(3);
    for(i = 0; i < dataArray.length; i++) {
      drawMonths();
      tempCoord += 3;
    }
    drawAxis();
  }
  
  void drawMaxes() {
    if(Show_Max_Temp == true) {
      stroke(255, 0, 0);
      point(tempCoord, 450 - dataArray[i].maxTemp*10);
    }
  }
  
  void drawMins() {
    if(Show_Min_Temp == true) {
      stroke(0, 0, 255);
      point(tempCoord, 450 - dataArray[i].minTemp*10);
    }
  }
  
  void drawSnowFall() {
    if(Show_Snow_Fall == true) {
      stroke(#00B22B);
      point(tempCoord, 450 - dataArray[i].snowFall*10);
    }
  }
  
  void checkOverlap() {
    if(abs(dataArray[i].maxTemp) >= abs(dataArray[i].minTemp)) {
      drawMaxes();
      drawMins();
    }
    else {
      drawMins();
      drawMaxes();
    }
  }
  
  void drawMonths() {
    if(dataArray[i].date.month == 1) {
      if (January == true) {
        checkOverlap();
        drawSnowFall();
      }
    }
    else if(dataArray[i].date.month == 2) {
      if (February == true) {
        checkOverlap();
        drawSnowFall();
      }
    }
    else if(dataArray[i].date.month == 3) {
      if (March == true) {
        checkOverlap();
        drawSnowFall();
      }
    }
    else if(dataArray[i].date.month == 4) {
      if (April == true) {
        checkOverlap();
        drawSnowFall();
      }
    }
    else if(dataArray[i].date.month == 5) {
      if (May == true) {
        checkOverlap();
        drawSnowFall();
      }
    }
    else if(dataArray[i].date.month == 6) {
      if (June == true) {
        checkOverlap();
        drawSnowFall();
      }
    }
    else if(dataArray[i].date.month == 7) {
      if (July == true) {
        checkOverlap();
        drawSnowFall();
      }
    }
    else if(dataArray[i].date.month == 8) {
      if (August == true) {
        checkOverlap();
        drawSnowFall();
      }
    }
    else if(dataArray[i].date.month == 9) {
      if (September == true) {
        checkOverlap();
        drawSnowFall();
      }
    }
    else if(dataArray[i].date.month == 10) {
      if (October == true) {
        checkOverlap();
        drawSnowFall();
      }
    }
    else if(dataArray[i].date.month == 11) {
      if (November == true) {
        checkOverlap();
        drawSnowFall();
      }
    }
    else if(dataArray[i].date.month == 12) {
      if (December == true) {
        checkOverlap();
        drawSnowFall();
      }
    }
  }
}
