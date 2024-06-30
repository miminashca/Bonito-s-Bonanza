color startFadeColor;
color stopFadeColor;
float fadeTime = millis();
boolean fade = false;
boolean fadeSwitched = false;
boolean roomSwitched = false;

void startFade() {
  startFadeColor = color(1, 0, 0, 0);
  stopFadeColor = color (0);
  fadeTime = millis();
  fade = true;
}

void drawFade() {

  if (fade) {
    roomSwitched = false;
    
    float t = ((millis()-fadeTime)/1000)*3;
    fill(lerpColor(startFadeColor, stopFadeColor, t));
    noStroke();
    rect(0, 0, width, height);

    if (t>=1 && !fadeSwitched) {

      if (room != "kitchen" && !roomSwitched) {
        room = "kitchen";
        roomSwitched = true;
      }

      if (room != "ingredients" && !roomSwitched) {
        room = "ingredients";
        roomSwitched = true;
      }


      //room = "kitchen";
      startFadeColor = color(0);
      stopFadeColor = color (1, 0, 0, 0);
      fadeTime = millis();
      fadeSwitched = true;
    }

    if (t>=1.1 && fadeSwitched) {
      fadeSwitched = false;
      fade = false;
      isSwitching = false;
    }
  }
}
