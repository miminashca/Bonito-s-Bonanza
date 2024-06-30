class Timer {
  int momentTime = millis();
  int timeLeft = 30;
  int positionX;
  int positionY;

  void drawTimer() {
    if (millis() - momentTime > 1000) {
      timeLeft--;
      momentTime=millis();
    }
    
    if(timeLeft <= 0){  
        timeLeft = 0;
    }
  }
}
