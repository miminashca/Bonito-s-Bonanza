import processing.sound.*;
SoundFile cutting;
SoundFile backgroundMusic;
SoundFile customerThanks;
SoundFile customerOrder;
SoundFile riceCooking;

int curSec = second();

PFont catFont;

PImage coinIcon;
PImage timerIcon;

PImage arrow;
PImage inventory;

PImage textPaper;
PImage cointimePaper;

PImage backgroundTop;
PImage backgroundBottom;

//lana added
PImage startScreen;
PImage startButton;

PImage endScreenLose;
PImage endScreenWin;

PImage kitchenIdle;
PImage riceOpen;
PImage weedOpen;

PImage knifeHold;
PImage knifeIdle;

PImage weed;
PImage seaweed;

PImage rice;
PImage riceTable;
PImage riceUncooked;
PImage riceCookedPile;

PImage salmonUncut;
PImage salmonStrip;

PImage salmonUncutInv;
PImage salmonCutInv;

PImage tunaUncut;
PImage tunaStrip;

PImage tunaUncutInv;
PImage tunaCutInv;

PImage avoUncut;
PImage avoStrip;

PImage avoUncutInv;
PImage avoCutInv;

PImage carrotUncut;
PImage carrotStrip;

PImage carrotUncutInv;
PImage carrotCutInv;

PImage salmonNigiri;
PImage tunaNigiri;

PImage salmonNigiriInv;
PImage tunaNigiriInv;


PImage sushiFinish;
PImage avoTuna;
PImage carrotTuna;
PImage avoSalmon;
PImage carrotSalmon;

PImage salmonSushi;
PImage tunaSushi;
PImage avoSushi;
PImage carrotSushi;

PImage customer1Back;
PImage customer2Back;
PImage customer3Back;
PImage customer4Back;

PImage customer1Front;
PImage customer2Front;
PImage customer3Front;
PImage customer4Front;

PImage xIcon;

PImage pawCursor;

boolean isTriggered = false;

boolean riceAssembly = false;
boolean salmonAssembly = false;
boolean tunaAssembly = false;
boolean avoAssembly = false;
boolean carrotAssembly = false;

boolean salmonCut = false;
boolean tunaCut = false;
boolean avoCut = false;
boolean carrotCut = false;

int playerX;
int playerY;

int posX = playerX;
int posY = playerY;

int cookX = 1280;
int cookY = 200;
int cookWidth = 800;
int cookHeight = 200;

boolean avocado = false;
boolean salmon = false;
boolean tuna = false;
boolean carrot = false;

boolean foodGrabbed1 = false;
boolean foodGrabbed2 = false;
boolean foodCut1 = false;
boolean foodCut2 = false;

int handgrab1 = 0;
int handgrab2 = 0;

String food1;
String food2;

boolean food1Cutted = false;
boolean food2Cutted = false;

int food1Width = 200;
int food1Height = 200;
int food2Width = 200;
int food2Height = 200;

boolean riceGrab = false;
boolean riceCook = false;
boolean riceCooked = false;
boolean timer = false;

boolean weedGrab = false;
boolean weedAssembly = false;

int riceX = -1000;
int riceY;
int riceWidth;
int riceHeight;
int riceTimer;
int currentSec;

int weedX = -1000;
int weedY;
int weedWidth = 450*3/4;
int weedHeight = 150*27/40;

boolean food1Grab = false;
int food1X;
int food1Y;
boolean food1Assembly = false;

boolean food2Grab = false;
int food2X;
int food2Y;
boolean food2Assembly = false;

boolean knifeGrab = false;
int knifeX;
int knifeY;

boolean sushi = false;
boolean sushiCut = false;
boolean sushiGrab = false;
boolean sushiGrabbed = false;

boolean nigiri = false;
boolean nigiriCut = false;
boolean nigiriGrab = false;
boolean nigiriGrabbed = false;

boolean avoInside = false;
boolean tunaInside = false;
boolean salmonInside = false;
boolean carrotInside = false;

//lana added
String room = "startScreen";

boolean isSwitching = false;

int riceTimerStart = 10;

int coins = 0;
int coinGoal = 50;
float gameTimer = 240;

boolean gameOver = false;

boolean sushiIngr1 = false;
boolean sushiIngr2 = false;
boolean sushiIngr3 = false;

PImage[][] playerImage = new PImage[4][3];
int previousPlayerX, previousPlayerY;
int playerImageFrame = 0;

int customerServed = -1;

int customer1X;
int customer1Y;
int customer2X;
int customer2Y;
int customerWidth = 207;
int customerHeight = 296;

boolean DiffCustomer1 = false;
boolean DiffCustomer2 = false;

boolean customer1Coming = false;
boolean customer1Here = false;
boolean customer2Coming = false;
boolean customer2Here = false;

int customer1Changer = int(random(1, 5));
int customer2Changer = int(random(1, 5));

boolean isWalking = false;

int orderOutline = 255;
int inventory1Outline = 0;
int inventory2Outline = 0;

String previousInventory1;
String previousInventory2;

Timer customerTimer = new Timer();

void setup() {
  size(1920, 1080);
  //fullScreen();

  fillReplics();
  getText();
  checkIngredients();

  catFont = createFont("Bonito_Font.ttf", 128);

  coinIcon = loadImage("icons_coins.png");
  timerIcon = loadImage("icons_timer.png");

  arrow = loadImage("arrow.png");
  inventory = loadImage("inventory.png");

  textPaper = loadImage("text_paper.png");
  cointimePaper = loadImage("cointime_paper.png");

  backgroundTop = loadImage("Background_Top.png");
  backgroundBottom = loadImage("Background_Bottom.png");

  //lana added
  startScreen = loadImage("Bonito's Bonanza.png");
  startButton = loadImage("StartButton.png");

  kitchenIdle = loadImage("Cookstation_Idle.png");
  riceOpen = loadImage("Cookstation_RiceOpen.png");
  weedOpen = loadImage("Cookstation_NoriOpen.png");

  knifeHold = loadImage("Knife_Holding.png");
  knifeIdle = loadImage("Knife_Idle.png");

  weed = loadImage("Nori.png");
  seaweed = loadImage("seaweed.png");

  rice = loadImage("Rice.png");
  riceTable = loadImage("Rice_Table.png");
  riceUncooked = loadImage("rice_uncooked.png");
  riceCookedPile = loadImage("rice_cooked.png");

  salmonUncut = loadImage("Salmon_Uncut.png");
  salmonStrip = loadImage("Salmon_Cut.png");

  salmonUncutInv = loadImage("salmonUncut.png");
  salmonCutInv = loadImage("salmonCut.png");

  tunaUncut = loadImage("Tuna_Uncut.png");
  tunaStrip = loadImage("Tuna_Cut.png");

  tunaUncutInv = loadImage("tunaUncut.png");
  tunaCutInv = loadImage("tunaCut.png");

  avoUncut = loadImage("Avocado_Uncut.png");
  avoStrip = loadImage("Avocado_Cut.png");

  avoUncutInv = loadImage("avocadoUncut.png");
  avoCutInv = loadImage("avocadoCut.png");

  carrotUncut = loadImage("Carrot_Uncut.png");
  carrotStrip = loadImage("Carrot_Cut.png");

  carrotUncutInv = loadImage("carrotUncut.png");
  carrotCutInv = loadImage("carrotCut.png");

  salmonNigiri = loadImage("Nigiri_Salmon.png");
  tunaNigiri = loadImage("Nigiri_Tuna.png");

  salmonNigiriInv = loadImage("salmon_nigiri.png");
  tunaNigiriInv = loadImage("tuna_nigiri.png");

  sushiFinish = loadImage("Sushi_Finished.png");
  avoTuna = loadImage("avocado_tuna.png");
  carrotTuna = loadImage("carrot_tuna.png");
  avoSalmon = loadImage("salmon_avocado.png");
  carrotSalmon = loadImage("carrot_salmon.png");

  salmonSushi = loadImage("salmon_sushi.png");
  tunaSushi = loadImage("tuna_sushi.png");
  avoSushi = loadImage("avocado_sushi.png");
  carrotSushi = loadImage("carrot_sushi.png");

  endScreenLose = loadImage("GameOverLose.png");
  endScreenWin = loadImage("BonitoVictory.png");

  playerImage[0][0] = loadImage("bonito_front.png");
  playerImage[0][1] = loadImage("bonito_front_1.png");
  playerImage[0][2] = loadImage("bonito_front_2.png");

  playerImage[1][0] = loadImage("bonito_left.png");
  playerImage[1][1] = loadImage("bonito_left_1.png");
  playerImage[1][2] = loadImage("bonito_left_2.png");

  playerImage[2][0] = loadImage("bonito_back.png");
  playerImage[2][1] = loadImage("bonito_back_1.png");
  playerImage[2][2] = loadImage("bonito_back_2.png");

  playerImage[3][0] = loadImage("bonito_right.png");
  playerImage[3][1] = loadImage("bonito_right_1.png");
  playerImage[3][2] = loadImage("bonito_right_2.png");

  customer1Back = loadImage("Black_Back.png");
  customer2Back = loadImage("Grey_Back.png");
  customer3Back = loadImage("White_Back.png");
  customer4Back = loadImage("Huzzah_Back.png");

  customer1Front = loadImage("Black_Back.png");
  customer2Front = loadImage("Grey_Back.png");
  customer3Front = loadImage("White_Back.png");
  customer4Front = loadImage("Huzzah_Back.png");

  xIcon = loadImage("x_icon.png");
  
  pawCursor = loadImage("cat_paw_cursor_3.png");

  cutting = new SoundFile(this, "cutting.wav");
  customerOrder = new SoundFile(this, "Customer_Order.wav");
  customerThanks = new SoundFile(this, "Customer_ThankYou.wav");
  riceCooking = new SoundFile(this, "RiceCooking.wav");

  backgroundMusic = new SoundFile(this, "Bonito's_Background_Music.wav");

  backgroundMusic.loop();
}

void draw() {

  customerTimer.drawTimer();

  if (avoInside) {
    println("avo");
    dishHasVegetables=true;
    dishHasAvokado=true;
    dishHasCarrot=false;
  }

  if (tunaInside) {
    println("tuna");
    dishHasFish=true;
    dishHasTuna=true;
    dishHasSalmon=false;
  }

  if (salmonInside) {
    println("salmon");
    dishHasFish=true;
    dishHasSalmon=true;
    dishHasTuna=false;
  }

  if (carrotInside) {
    println("carrot");
    dishHasVegetables=true;
    dishHasCarrot=true;
    dishHasAvokado=false;
  }

  if (nigiri) {
    dishIsNigiri=true;
  }

  if (sushi) {
    dishIsRoll=true;
  }

  if (room == "ingredients") {

    sushiIngr1 = false;
    sushiIngr2 = false;
    sushiIngr3 = false;

    if (customerServed == -1) {
      customer1X = width/2-75;
      customer1Y = height+500;
      customer2X = width/2+150;
      customer2Y = height+500;
      customerServed = 0;
    }

    imageMode(CORNER);
    image(backgroundTop, 0, 0, width, 808);

    if (nigiriCut && (food1 == "salmon" || food1 == "tuna")) {
      riceAssembly = false;
      riceCook = false;
      riceCooked = false;
      nigiriCut = false;
      nigiriGrabbed = true;
      food1 = "nigiri";
    } else if (nigiriCut && (food2 == "salmon" || food2 == "tuna")) {
      riceAssembly = false;
      riceCook = false;
      riceCooked = false;
      nigiriCut = false;
      nigiriGrabbed = true;
      food2 = "nigiri";
    }

    if (!sushiCut && food1 == "sushi" && (salmonInside || tunaInside) && (avoInside || carrotInside)) {
      food1Width = 100*3/4;
      sushiGrabbed = true;
      weedAssembly = false;
      riceAssembly = false;
      riceCooked = false;
      riceCook = false;
      food1Assembly = false;
      food2Assembly = false;
      sushiCut = false;
      sushiGrab = false;
    } else if (!sushiCut && food1 == "sushi") {
      food1Width = 100*3/4;
      sushiGrabbed = true;
      weedAssembly = false;
      riceAssembly = false;
      riceCooked = false;
      riceCook = false;
      food1Assembly = false;
      sushiCut = false;
      sushiGrab = false;
    }
    if (!sushiCut && food2 == "sushi") {
      food2Width = 100*3/4;
      sushiGrabbed = true;
      weedAssembly = false;
      riceAssembly = false;
      riceCooked = false;
      riceCook = false;
      food2Assembly = false;
      sushiCut = false;
      sushiGrab = false;
      food2X = width-200;
    }

    if (food2 != "nigiri" && food2 != "sushi") {
      food2Grab = false;
    } else if (food1 != "nigiri" && food1 != "sushi") {
      food1Grab = false;
    }

    food1X = width-500*3/4;
    food1Y = 200*3/4;
    food2X = width-200*3/4;
    food2Y = 200*3/4;

    if (playerX < 10 && playerY <10) {
      playerX = width/2;
      playerY = 950*3/4;
      posX = width/2;
      posY = 950*3/4;
    }

    if (!isTriggered && mousePressed && dist(mouseX, mouseY, width-500*3/4, 200*3/4) < 200*3/4) {
      if (food1 == "salmon") {
        salmon = false;
      } else if (food1 == "tuna") {
        tuna = false;
      } else if (food1 == "avocado") {
        avocado = false;
      } else if (food1 == "carrot") {
        carrot = false;
      } else if (food1 == "sushi" && (salmonInside || tunaInside) && (avoInside || carrotInside)) {
        food2 = "nothing";
        food2Width = 200*3/4;
        food2Height = 200*3/4;
        handgrab2 = 0;
        food2Grab = false;
        sushiGrab = false;
        food1Cutted = false;
        food2Cutted = false;
        foodGrabbed1 = false;
        foodGrabbed2 = false;
        salmonInside = false;
        tunaInside = false;
        avoInside = false;
        carrotInside = false;
        sushi = false;
        sushiGrabbed = false;
      } else if (food1 == "sushi" && (salmonInside || tunaInside || avoInside || carrotInside)) {
        handgrab2 = 0;
        sushiGrab = false;
        food1Cutted = false;
        foodGrabbed1 = false;
        salmonInside = false;
        tunaInside = false;
        avoInside = false;
        carrotInside = false;
        sushi = false;
        sushiGrabbed = false;
      } else if (food1 == "nigiri") {
        nigiriGrab = false;
        food1Cutted = false;
        foodGrabbed1 = false;
        salmonInside = false;
        tunaInside = false;
        avoInside = false;
        carrotInside = false;
        nigiri = false;
        nigiriGrabbed = false;
      }
      food1 = "nothing";
      food1Width = 200*3/4;
      food1Height = 200*3/4;
      handgrab1 = 0;
      food1Grab = false;
    } else if (!isTriggered && mousePressed && dist(mouseX, mouseY, width-200*3/4, 200*3/4) < 200*3/4) {
      if (food2 == "salmon") {
        salmon = false;
      } else if (food2 == "tuna") {
        tuna = false;
      } else if (food2 == "avocado") {
        avocado = false;
      } else if (food2 == "carrot") {
        carrot = false;
      } else if (food2 == "sushi" && (salmonInside || tunaInside || avoInside || carrotInside)) {
        sushiGrab = false;
        food2Cutted = false;
        foodGrabbed2 = false;
        salmonInside = false;
        tunaInside = false;
        avoInside = false;
        carrotInside = false;
        sushi = false;
        sushiGrabbed = false;
      } else if (food2 == "nigiri") {
        nigiriGrab = false;
        food2Cutted = false;
        foodGrabbed2 = false;
        salmonInside = false;
        tunaInside = false;
        avoInside = false;
        carrotInside = false;
        nigiri = false;
        nigiriGrabbed = false;
      }
      food2 = "nothing";
      handgrab2 = 0;
      food2Grab = false;
      food2Width = 200*3/4;
      food2Height = 200*3/4;
    } else if (!isTriggered && mousePressed && curSec != second()) {
      posX = int(mouseX);
      posY = int(mouseY);
      isTriggered = true;
    } else if (isTriggered && !mousePressed) {
      isTriggered = false;
    }

    if (food1 == "nothing") {
      foodGrabbed1 = false;
    }
    if (food2 == "nothing") {
      foodGrabbed2 = false;
    }

    float playerSpeed = 5;

    if (playerX < posX && dist(playerX, playerX, posX, posX) > 10 && playerX < width - 1075*3/4) {
      playerX += playerSpeed;
    } else if (playerX < posX && dist(playerX, playerX, posX, posX) < 10 && playerX < width - 1075*3/4) {
      playerX += 1;
    } else if (playerX > posX && dist(playerX, playerX, posX, posX) > 10 && playerX >= 1100*3/4) {
      playerX -= playerSpeed;
    } else if (playerX > posX && dist(playerX, playerX, posX, posX) < 10 && playerX >= 1100*3/4) {
      playerX -= 1;
    }

    if (playerY < posY && dist(playerY, playerY, posY, posY) > 10 && playerY < 1100*27/40) {
      playerY += playerSpeed;
    } else if (playerY < posY && dist(playerY, playerY, posY, posY) < 10 && playerY < 1100*27/40) {
      playerY += 1;
    } else if (playerY > posY && dist(playerY, playerY, posY, posY) > 10 && playerY >= 750*27/40) {
      playerY -= playerSpeed;
    } else if (playerY > posY && dist(playerY, playerY, posY, posY) < 10 && playerY >= 750*27/40) {
      playerY -= 1;
    }

    int playerImageIndex = 0;
    if (dist(playerX, playerY, previousPlayerX, previousPlayerY) < 0.01) {
      playerImageIndex = 0;
      playerImageFrame = 0;
    } else {
      if (playerX > previousPlayerX) {
        playerImageIndex = 3;
      } else if (playerX < previousPlayerX) {
        playerImageIndex = 1;
      } else if (playerY > previousPlayerY) {
        playerImageIndex = 0;
      } else if (playerY < previousPlayerY) {
        playerImageIndex = 2;
      }

      if (frameCount % 10 == 0) playerImageFrame = (playerImageFrame + 1) % playerImage[playerImageIndex].length;
    }

    push();
    imageMode(CENTER);
    image(playerImage[playerImageIndex][playerImageFrame], playerX, playerY, 397 / 3, 771 / 3);
    pop();

    previousPlayerX = playerX;
    previousPlayerY = playerY;

    if (playerY > 725 && sushi && food1 == "sushi" && (salmonInside || tunaInside) && (avoInside || carrotInside)) {
      checkDish();
      if (dishIsValid) {
        coins += getCoinReward(customerTimer.timeLeft);
        customerServed += 1;
        customerThanks.play();
      } else if (!dishIsValid) {
        customerServed += 1;
        customerThanks.play();
      }
      customerWish = result;

      sushiGrab = false;
      food1 = "nothing";
      food2 = "nothing";
      food1Cutted = false;
      food2Cutted = false;
      foodGrabbed1 = false;
      foodGrabbed2 = false;
      salmonInside = false;
      tunaInside = false;
      avoInside = false;
      carrotInside = false;
      sushi = false;
      sushiGrabbed = false;
      food1Height = 200*3/4;
      food2Height = 200*3/4;

      reset();
      randomCustomerWish = int(random(0, numberOfCombinations));
      customerWish = replics.get(randomCustomerWish);
      checkIngredients();
    } else if (playerY > 725 && sushi && food1 == "sushi" && (salmonInside || tunaInside || avoInside || carrotInside)) {
      checkDish();
      if (dishIsValid) {
        coins += getCoinReward(customerTimer.timeLeft);
        customerServed += 1;
        customerThanks.play();
      } else if (!dishIsValid) {
        customerServed += 1;
        customerThanks.play();
      }
      customerWish = result;

      sushiGrab = false;
      food1 = "nothing";
      food1Cutted = false;
      foodGrabbed1 = false;
      salmonInside = false;
      tunaInside = false;
      avoInside = false;
      carrotInside = false;
      sushi = false;
      sushiGrabbed = false;
      food1Height = 200*3/4;

      reset();
      randomCustomerWish = int(random(0, numberOfCombinations));
      customerWish = replics.get(randomCustomerWish);
      checkIngredients();
    } else if (playerY > 725 && sushi && food2 == "sushi" && (salmonInside || tunaInside || avoInside || carrotInside)) {
      checkDish();
      if (dishIsValid) {
        coins += getCoinReward(customerTimer.timeLeft);
        customerServed += 1;
        customerThanks.play();
      } else if (!dishIsValid) {
        customerServed += 1;
        customerThanks.play();
      }
      customerWish = result;

      sushiGrab = false;
      food2 = "nothing";
      food2Cutted = false;
      foodGrabbed2 = false;
      salmonInside = false;
      tunaInside = false;
      avoInside = false;
      carrotInside = false;
      sushi = false;
      sushiGrabbed = false;
      food2Height = 200*3/4;

      reset();
      randomCustomerWish = int(random(0, numberOfCombinations));
      customerWish = replics.get(randomCustomerWish);
      checkIngredients();
    } else if (playerY > 725 && nigiri && food1 == "nigiri") {
      checkDish();
      if (dishIsValid) {
        coins += getCoinReward(customerTimer.timeLeft);
        customerServed += 1;
        customerThanks.play();
      } else if (!dishIsValid) {
        customerServed += 1;
        customerThanks.play();
      }
      customerWish = result;

      nigiriGrab = false;
      food1 = "nothing";
      food1Cutted = false;
      foodGrabbed1 = false;
      salmonInside = false;
      tunaInside = false;
      avoInside = false;
      carrotInside = false;
      nigiri = false;
      nigiriGrabbed = false;
      food1Width = 200*3/4;
      food1Height = 200*3/4;

      reset();
      randomCustomerWish = int(random(0, numberOfCombinations));
      customerWish = replics.get(randomCustomerWish);
      checkIngredients();
    } else if (playerY > 725 && nigiri && food2 == "nigiri") {
      checkDish();
      if (dishIsValid) {
        coins += getCoinReward(customerTimer.timeLeft);
        customerServed += 1;
      } else if (!dishIsValid) {
        customerServed += 1;
      }
      customerWish = result;

      nigiriGrab = false;
      food2 = "nothing";
      food2Cutted = false;
      foodGrabbed2 = false;
      salmonInside = false;
      tunaInside = false;
      avoInside = false;
      carrotInside = false;
      nigiri = false;
      nigiriGrabbed = false;
      food2Width = 200*3/4;
      food2Height = 200*3/4;

      reset();
      randomCustomerWish = int(random(0, numberOfCombinations));
      customerWish = replics.get(randomCustomerWish);
      checkIngredients();
    }

    if (!isTriggered && mousePressed && dist(mouseX, mouseY, width-500*3/4, 200*3/4) < 75*3/4) {
      if (food1 == "salmon") {
        salmon = false;
      } else if (food1 == "tuna") {
        tuna = false;
      } else if (food1 == "avocado") {
        avocado = false;
      } else if (food1 == "carrot") {
        carrot = false;
      } else if (food1 == "sushi") {
        sushiGrab = false;
        food1 = "nothing";
        food1Cutted = false;
        food2Cutted = false;
        foodGrabbed1 = false;
        foodGrabbed2 = false;
        salmonInside = false;
        tunaInside = false;
        avoInside = false;
        carrotInside = false;
        sushi = false;
        sushiGrabbed = false;
        food1Height = 200;
      } else if (food1 == "nigiri") {
        nigiriGrab = false;
        food1 = "nothing";
        food1Cutted = false;
        foodGrabbed1 = false;
        salmonInside = false;
        tunaInside = false;
        avoInside = false;
        carrotInside = false;
        nigiri = false;
        nigiriGrabbed = false;
      }
      food1 = "nothing";
      foodGrabbed1 = false;
      handgrab1 = 0;
      posX = playerX;
      posY = playerY;
      isTriggered = true;
      food1Cutted = false;
      food1Width = 200*3/4;
      food1Height = 200*3/4;
    } else if (!isTriggered && mousePressed && dist(mouseX, mouseY, width-200*3/4, 200*3/4) < 75*3/4) {
      if (food2 == "salmon") {
        salmon = false;
      } else if (food2 == "tuna") {
        tuna = false;
      } else if (food2 == "avocado") {
        avocado = false;
      } else if (food2 == "carrot") {
        carrot = false;
      } else if (food2 == "sushi") {
        sushiGrab = false;
        food2 = "nothing";
        food2Cutted = false;
        foodGrabbed2 = false;
        salmonInside = false;
        tunaInside = false;
        avoInside = false;
        carrotInside = false;
        sushi = false;
        sushiGrabbed = false;
        food2Height = 200;
      } else if (food2 == "nigiri") {
        nigiriGrab = false;
        food2 = "nothing";
        food2Cutted = false;
        foodGrabbed2 = false;
        salmonInside = false;
        tunaInside = false;
        avoInside = false;
        carrotInside = false;
        nigiri = false;
        nigiriGrabbed = false;
      }
      food2 = "nothing";
      foodGrabbed2 = false;
      handgrab2 = 0;
      posX = playerX;
      posY = playerY;
      isTriggered = true;
      food2Cutted = false;
      food2Width = 200*3/4;
      food2Height = 200*3/4;
    } else if (isTriggered && !mousePressed) {
      isTriggered = false;
    }

    if (!foodGrabbed1) {
      if (dist(playerX, playerY, 900*3/4, 525) < 175 && !salmon && !tuna && !nigiri && !sushi) {
        salmon = true;
        foodGrabbed1 = true;
        handgrab1 = 1;
        food1 = "salmon";
      } else if (dist(playerX, playerY, 1700*3/4, 525) < 175 && !avocado && !carrot && !nigiri && !sushi) {
        avocado = true;
        foodGrabbed1 = true;
        handgrab1 = 2;
        food1 = "avocado";
      } else if (dist(playerX, playerY, 900*3/4, 625) < 175 && !tuna && !salmon && !nigiri && !sushi) {
        tuna = true;
        foodGrabbed1 = true;
        handgrab1 = 3;
        food1 = "tuna";
      } else if (dist(playerX, playerY, 1700*3/4, 625) < 175 && !carrot && !avocado && !nigiri && !sushi) {
        carrot = true;
        foodGrabbed1 = true;
        handgrab1 = 4;
        food1 = "carrot";
      }
    } else if (!foodGrabbed2) {
      if (dist(playerX, playerY, 900*3/4, 525) < 175 && !salmon && !tuna && !nigiri && !sushi) {
        salmon = true;
        foodGrabbed2 = true;
        handgrab2 = 1;
        food2 = "salmon";
      } else if (dist(playerX, playerY, 1700*3/4, 525) < 175 && !avocado && !carrot && !nigiri && !sushi) {
        avocado = true;
        foodGrabbed2 = true;
        handgrab2 = 2;
        food2 = "avocado";
      } else if (dist(playerX, playerY, 900*3/4, 625) < 175 && !tuna && !salmon && !nigiri && !sushi) {
        tuna = true;
        foodGrabbed2 = true;
        handgrab2 = 3;
        food2 = "tuna";
      } else if (dist(playerX, playerY, 1700*3/4, 625) < 175 && !carrot && !avocado && !nigiri && !sushi) {
        carrot = true;
        foodGrabbed2 = true;
        handgrab2 = 4;
        food2 = "carrot";
      }
    }

    imageMode(CORNER);
    image (backgroundBottom, 0, 808, width, 272);

    imageMode(CENTER);

    if (DiffCustomer1) {
      customer1Changer = int(random(1, 5));
      DiffCustomer1 = false;
    }

    if (customer1Changer == 1 && customerServed%2 == 0) {
      image(customer1Back, customer1X, customer1Y, customerWidth, customerHeight);
    } else if (customer1Changer == 2 && customerServed%2 == 0) {
      image(customer2Back, customer1X, customer1Y, customerWidth, customerHeight);
    } else if (customer1Changer == 3 && customerServed%2 == 0) {
      image(customer3Back, customer1X, customer1Y, customerWidth, customerHeight);
    } else if (customer1Changer == 4 && customerServed%2 == 0) {
      image(customer4Back, customer1X, customer1Y, customerWidth, customerHeight);
    } else if (customer1Changer == 1 && customerServed%2 == 1) {
      image(customer1Front, customer1X, customer1Y, customerWidth, customerHeight);
    } else if (customer1Changer == 2 && customerServed%2 == 1) {
      image(customer2Front, customer1X, customer1Y, customerWidth, customerHeight);
    } else if (customer1Changer == 3 && customerServed%2 == 1) {
      image(customer3Front, customer1X, customer1Y, customerWidth, customerHeight);
    } else if (customer1Changer == 4 && customerServed%2 == 1) {
      image(customer4Front, customer1X, customer1Y, customerWidth, customerHeight);
    }

    if (DiffCustomer2) {
      customer2Changer = int(random(1, 5));
      DiffCustomer2 = false;
    }

    if (customer2Changer == 1 && customerServed%2 == 1) {
      image(customer1Back, customer2X, customer2Y, customerWidth, customerHeight);
    } else if (customer2Changer == 2 && customerServed%2 == 1) {
      image(customer3Back, customer2X, customer2Y, customerWidth, customerHeight);
    } else if (customer2Changer == 3 && customerServed%2 == 1) {
      image(customer3Back, customer2X, customer2Y, customerWidth, customerHeight);
    } else if (customer2Changer == 4 && customerServed%2 == 1) {
      image(customer4Back, customer2X, customer2Y, customerWidth, customerHeight);
    } else if (customer2Changer == 1 && customerServed%2 == 0) {
      image(customer1Front, customer2X, customer2Y, customerWidth, customerHeight);
    } else if (customer2Changer == 2 && customerServed%2 == 0) {
      image(customer2Front, customer2X, customer2Y, customerWidth, customerHeight);
    } else if (customer2Changer == 3 && customerServed%2 == 0) {
      image(customer3Front, customer2X, customer2Y, customerWidth, customerHeight);
    } else if (customer2Changer == 4 && customerServed%2 == 0) {
      image(customer4Front, customer2X, customer2Y, customerWidth, customerHeight);
    }

    if (playerX > width/2-100 && playerX < width/2+100 && playerY < 525 && !isSwitching) {
      startFade();
      isSwitching = true;
    }
  }

  if (room == "kitchen") {

    imageMode(CORNER);
    if (mouseX > width/2-650*3/4 && mouseX < width/2-50*3/4 && mouseY > height-475*27/40 && !knifeGrab && !food1Grab && !food2Grab && !riceGrab && !weedGrab && !nigiriGrab) {
      image(riceOpen, 0, 0, width, height);
    } else if (mouseX > width/2+100*3/4 && mouseX < width/2+700*3/4 && mouseY > height-475*27/40 && !knifeGrab && !food1Grab && !food2Grab && !riceGrab && !weedGrab && !nigiriGrab) {
      image(weedOpen, 0, 0, width, height);
    } else {
      image(kitchenIdle, 0, 0, width, height);
    }

    float cookingProgress = map(riceTimer, 0, riceTimerStart, 270, -90);

    push();
    fill(0, 50);
    noStroke();
    arc(660*3/4, 1000*27/40, 50*3/4, 50*27/40, radians(cookingProgress), radians(270));
    pop();

    image(arrow, width-200, height-200, 200*3/4, 200*27/40);

    if (!weedGrab && !food1Assembly && !food2Assembly && !riceGrab && !food1Grab && !food2Grab && !riceCook && mousePressed && mouseX > width/2-650*3/4 && mouseX < width/2-50*3/4 && mouseY > height-475*27/40 && !isTriggered && !riceCooked && !riceAssembly && !knifeGrab && !nigiriGrab) {                      //grab and drop the rice in the pot
      riceGrab = true;
      isTriggered = true;
      riceWidth = 260*3/4;
      riceHeight = 200*27/40;
    } else if (riceGrab && riceCooked && !mousePressed && dist(mouseX, mouseY, width/2-25*3/4, height/2*27/40) < 300 && isTriggered && !weedAssembly && !riceAssembly) {
      riceGrab = false;
      riceAssembly = true;
      isTriggered = false;
      riceX = width/2-25*3/4;
      riceY = height/2;
      riceWidth = weedWidth/2;
      riceHeight = weedHeight;
    } else if (riceAssembly && !weedAssembly && !riceGrab && !weedGrab && !food1Grab && !food2Grab && !knifeGrab && mousePressed && dist(mouseX, mouseY, width/2-25*3/4, height/2) < 250*3/4 && !food1Assembly && !food2Assembly && !nigiriCut) {
      riceGrab = true;
    } else if (riceGrab && riceCooked && !mousePressed && dist(mouseX, mouseY, width/2-25*3/4, height/2) < 300 && isTriggered && weedAssembly && !riceAssembly) {
      riceGrab = false;
      riceAssembly = true;
      isTriggered = false;
      riceX = width/2-25*3/4;
      riceY = height/2;
      riceWidth = weedWidth-25;
      riceHeight = weedHeight - 50;
    } else if (riceGrab && isTriggered && !weedGrab && !food1Grab && !food2Grab && !mousePressed && !riceCook && dist(mouseX, mouseY, 660*3/4, 650*27/40) < 300*3/4 && !riceAssembly) {
      isTriggered = false;
      riceGrab = false;
      riceCook = true;
      timer = true;
      riceTimer = riceTimerStart;
      currentSec = second();
      riceX = 660*3/4;
      riceY = 515*27/40;
      //lana added
      riceCooking.play();
    } else if (riceCook && riceCooked && mousePressed && !isTriggered && dist(mouseX, mouseY, riceX, riceY) < 250*3/4 && !weedGrab && !food1Grab && !food2Grab && !riceAssembly) {
      riceGrab = true;
      isTriggered = true;
    } else if (riceGrab && mousePressed) {
      riceX = mouseX;
      riceY = mouseY;
    } else if (riceGrab && !mousePressed && riceAssembly && dist(mouseX, mouseY, 400*3/4, height-250*27/40) < 200*3/4) {
      riceCooked = false;
      riceCook = false;
      riceAssembly = false;
    } else if (riceGrab && !mousePressed && riceAssembly && dist(mouseX, mouseY, 800*3/4, height/2-200*27/40) < 300*3/4) {
      riceGrab = false;
      riceWidth = 260*3/4;
      riceHeight = 200*27/40;
      riceX = 660*3/4;
      riceY = 515*27/40;
      riceAssembly = false;
    } else if (riceGrab && !mousePressed && riceAssembly) {
      riceX = width/2-25*3/4;
      riceY = height/2;
      riceGrab = false;
    } else if (riceGrab && !mousePressed && riceCooked) {
      riceGrab = false;
      isTriggered = false;
      riceX = 660*3/4;
      riceY = 515*27/40;
    } else if (riceGrab && !mousePressed && !riceCooked) {
      riceGrab = false;
      isTriggered = false;
      riceX = -1000;
      riceY = 0;
    }

    if (!riceGrab && !weedGrab && !nigiriGrab && !food1Grab && !food2Grab && mousePressed && mouseX > width/2+100*3/4 && mouseX < width/2+700*3/4 && mouseY > height-475*27/40 && !weedAssembly && !knifeGrab) {                      //grab and drop the rice in the pot
      weedGrab = true;
      weedWidth = 450*3/4;
      weedHeight = 150*27/40;
    } else if (weedGrab && !riceGrab && !mousePressed && dist(mouseX, mouseY, width/2-25*3/4, height/2) < 300 && !isTriggered && !weedAssembly && !riceAssembly) {
      weedGrab = false;
      weedAssembly = true;
      isTriggered = false;
      weedX = width/2-25*3/4;
      weedY = height/2;
    } else if (weedAssembly && !riceAssembly && !weedGrab && !riceGrab && !food1Grab && !food2Grab && !knifeGrab && mousePressed && dist(mouseX, mouseY, weedX, weedY) < 200*3/4) {
      weedGrab = true;
    } else if (weedGrab && mousePressed) {
      weedX = mouseX;
      weedY = mouseY;
    } else if (weedGrab && !mousePressed && weedAssembly && dist(mouseX, mouseY, 400*3/4, height-250*27/40) < 200*3/4) {
      weedAssembly = false;
    } else if (weedGrab && !mousePressed && weedAssembly) {
      weedX = width/2-25*3/4;
      weedY = height/2;
      weedGrab = false;
    } else if (weedGrab && !mousePressed && !weedAssembly) {
      weedGrab = false;
      weedX = -1000;
      weedY = 0;
    }

    imageMode(CENTER);
    if (!weedGrab) {
      image(weed, weedX, weedY, weedWidth, weedHeight);
    } else if (weedGrab) {
      image(seaweed, weedX, weedY, 450*3/4, 250*27/40);
    }

    if (!riceAssembly && !riceGrab) {
      image(rice, riceX, riceY, riceWidth, riceHeight);
    } else if (riceAssembly && !riceGrab) {
      image(riceTable, riceX, riceY, riceWidth, riceHeight);
    } else if (!riceCooked && riceGrab) {
      image(riceUncooked, riceX, riceY);
    } else if (riceCooked && riceGrab) {
      image(riceCookedPile, riceX, riceY, riceWidth, riceHeight);
    }

    if (!food1Assembly) {
      if (!food1Grab && !foodCut1 && mousePressed && dist(mouseX, mouseY, food1X, food1Y) < 75*3/4 && !food2Grab && !riceGrab && !weedGrab && !isTriggered && food1 != null && food1 != "nothing" && food1 != "nigiri") {
        food1Grab = true;
        isTriggered = true;
      } else if (food1Grab && isTriggered && !mousePressed && dist(mouseX, mouseY, width*3/4-50*3/4, height/2+25*27/40) < 300*3/4) {
        food1X = width*3/4-150*3/4;
        food1Y = height/2-10*27/40;
        isTriggered = false;
        food1Grab = false;
        foodCut1 = true;
      } else if (food1Grab && isTriggered && !mousePressed && dist(mouseX, mouseY, width/2-25*3/4, height/2*27/40) < 300*3/4 && riceAssembly && !food1Assembly && food1Cutted && weedAssembly && riceAssembly) {
        food1X = width/2-125*3/4;
        food1Y = height/2-1*27/40;
        isTriggered = false;
        food1Grab = false;
        food1Assembly = true;
      } else if (food1Grab && isTriggered && !mousePressed && dist(mouseX, mouseY, width/2-25*3/4, height/2) < 300*3/4 && riceAssembly && !food1Assembly && food1Cutted && !weedAssembly && riceAssembly && (food1 == "tuna" || food1 == "salmon")) {
        food1X = riceX;
        food1Y = height/2;
        isTriggered = false;
        food1Grab = false;
        food1Assembly = true;
      } else if (food1Grab && mousePressed && isTriggered) {
        food1X = mouseX;
        food1Y = mouseY;
      } else if (food1Grab && !mousePressed && dist(mouseX, mouseY, 400*3/4, height-250*27/40) < 200*3/4) {

        if (food1 == "salmon") {
          salmon = false;
        } else if (food1 == "tuna") {
          tuna = false;
        } else if (food1 == "avocado") {
          avocado = false;
        } else if (food1 == "carrot") {
          carrot = false;
        }

        food1 = "nothing";
        food1Cutted = false;
        foodGrabbed1 = false;
        handgrab1 = 0;
        food1X = width-500*3/4;
        food1Y = 200*3/4;
        food1Grab = false;
        foodCut1 = false;
        isTriggered = false;
      } else if (food1Grab && !mousePressed && !foodCut1) {
        food1Grab = false;
        isTriggered = false;
        food1X = width-500*3/4;
        food1Y = 200*27/40;
      } else if (food1Grab && !mousePressed && foodCut1) {
        food1Grab = false;
        isTriggered = false;
        food1X = width*3/4-150*3/4;
        food1Y = height/2;
      }

      if (food1Cutted && foodCut1 && mousePressed && dist(mouseX, mouseY, food1X, food1Y) < 75 && !riceGrab && !weedGrab && !isTriggered) {
        food1Grab = true;
        isTriggered = true;
      }
    }

    if (!food2Assembly) {
      if (!food2Grab && !foodCut2 && mousePressed && dist(mouseX, mouseY, food2X, food2Y) < 75*3/4 && !food1Grab && !riceGrab && !weedGrab && !isTriggered && food2 != null && food2 != "nothing" && food2 != "nigiri") {
        food2Grab = true;
        isTriggered = true;
      } else if (food2Grab && isTriggered && !mousePressed && dist(mouseX, mouseY, width*3/4-100*3/4, height/2+25*27/40) < 300*3/4) {
        food2X = width*3/4+50*3/4;
        food2Y = height/2+50*27/40;
        isTriggered = false;
        food2Grab = false;
        foodCut2 = true;
      } else if (food2Grab && isTriggered && !mousePressed && dist(mouseX, mouseY, width/2-25*3/4, height/2) < 300*3/4 && riceAssembly && !food2Assembly && food2Cutted && weedAssembly && riceAssembly) {
        food2X = width/2+75*3/4;
        food2Y = height/2;
        isTriggered = false;
        food2Grab = false;
        food2Assembly = true;
      } else if (food2Grab && isTriggered && !mousePressed && dist(mouseX, mouseY, width/2-25*3/4, height/2) < 300*3/4 && riceAssembly && !food2Assembly && food2Cutted && !weedAssembly && riceAssembly && (food2 == "tuna" || food2 == "salmon")) {
        food2X = riceX;
        food2Y = height/2;
        isTriggered = false;
        food2Grab = false;
        food2Assembly = true;
      } else if (food2Grab && mousePressed && isTriggered) {
        food2X = mouseX;
        food2Y = mouseY;
      } else if (food2Grab && !mousePressed && dist(mouseX, mouseY, 400*3/4, height-250*27/40) < 200*3/4) {

        if (food2 == "salmon") {
          salmon = false;
        } else if (food2 == "tuna") {
          tuna = false;
        } else if (food2 == "avocado") {
          avocado = false;
        } else if (food2 == "carrot") {
          carrot = false;
        }

        food2 = "nothing";
        food2Cutted = false;
        foodGrabbed2 = false;
        handgrab2 = 0;
        food2X = width-200*3/4;
        food2Y = 200*27/40;
        food2Grab = false;
        foodCut2 = false;
        isTriggered = false;
      } else if (food2Grab && !mousePressed && !foodCut2) {
        food2Grab = false;
        isTriggered = false;
        food2X = width-200*3/4;
        food2Y = 200*27/40;
      } else if (food2Grab && !mousePressed && foodCut2) {
        food2Grab = false;
        isTriggered = false;
        food2X = width*3/4+50*3/4;
        food2Y = height/2+50*27/40;
      }

      if (food2Cutted && foodCut2 && mousePressed && dist(mouseX, mouseY, food2X, food2Y) < 75*3/4 && !riceGrab && !weedGrab && !isTriggered) {
        food2Grab = true;
        isTriggered = true;
      }
    }

    if (!food1Cutted && foodCut1 && isTriggered && knifeGrab && dist(knifeX, knifeY, food1X, food1Y) < 75*3/4) {
      food1Width = 200*3/4;
      food1Height = 200*27/40;
      food1Cutted = true;
      cutting.play();
    } else if (!food2Cutted && foodCut2 && isTriggered && knifeGrab && dist(knifeX, knifeY, food2X, food2Y) < 75*3/4) {
      food2Width = 200*3/4;
      food2Height = 200*27/40;
      food2Cutted = true;
      cutting.play();
    }

    if (food1 == "salmon" && food1Assembly && (sushiCut || nigiriCut)) {
      salmonInside = true;
      salmon = false;
    }
    if (food1 == "tuna" && food1Assembly && (sushiCut || nigiriCut)) {
      tunaInside = true;
      tuna = false;
    }
    if (food1 == "avocado" && food1Assembly && (sushiCut || nigiriCut)) {
      avoInside = true;
      avocado = false;
    }
    if (food1 == "carrot" && food1Assembly && (sushiCut || nigiriCut)) {
      carrotInside = true;
      carrot = false;
    }

    if (food2 == "tuna" && food2Assembly && (sushiCut || nigiriCut)) {
      tunaInside = true;
      tuna = false;
    }
    if (food2 == "salmon" && food2Assembly && (sushiCut || nigiriCut)) {
      salmonInside = true;
      salmon = false;
    }
    if (food2 == "avocado" && food2Assembly && (sushiCut || nigiriCut)) {
      avoInside = true;
      avocado = false;
    }
    if (food2 == "carrot" && food2Assembly && (sushiCut || nigiriCut)) {
      carrotInside = true;
      carrot = false;
    }

    if ((food1Assembly || food2Assembly) && (food1 == "salmon" || food2 == "salmon") && nigiri) {
      salmonInside = true;
      salmon = false;
    }

    if ((food1Assembly || food2Assembly) && (food1 == "tuna" || food2 == "tuna") && nigiri) {
      tunaInside = true;
      tuna = false;
    }

    if (sushi && !sushiGrab && !sushiGrabbed && sushiCut && !isTriggered && dist(mouseX, mouseY, riceX, riceY) < 250*3/4 && mousePressed) {
      sushiGrab = true;
      isTriggered = true;
    } else if (sushiGrabbed && sushiCut && sushi) {
      weedX = -1000;
      riceX = -1000;
      riceAssembly = false;
      riceCook = false;
      riceCooked = false;
      weedAssembly = false;
      sushiCut = false;
    } else if (sushi && sushiGrab && mousePressed && isTriggered && !sushiGrabbed) {
      riceX = mouseX;
      riceY = mouseY;
    } else if (sushi && sushiGrab && !mousePressed && isTriggered && dist(mouseX, mouseY, 400*3/4, height-250*27/40) < 200*3/4 && (salmonInside || tunaInside) && (avoInside || carrotInside)) {
      food1 = "nothing";
      food2 = "nothing";
      weedX = -1000;
      riceX = -1000;
      riceAssembly = false;
      riceCook = false;
      riceCooked = false;
      weedAssembly = false;

      sushi = false;
      sushiCut = false;
      sushiGrabbed = false;

      food1Assembly = false;
      food1Cutted = false;
      foodGrabbed1 = false;
      food1Grab = false;
      handgrab1 = 0;
      isTriggered = false;

      tunaInside = false;
      tuna = false;
      salmonInside = false;
      salmon = false;
      avoInside = false;
      avocado = false;
      carrotInside = false;
      carrot = false;
      sushiGrab = false;

      food1X = width-500*3/4;
      food1Y = 200*27/40;
      food2X = width-200*3/4;
      food2Y = 200*27/40;
    } else if (sushi && sushiGrab && !mousePressed && isTriggered && dist(mouseX, mouseY, 400*3/4, height-250*27/40) < 200*3/4 && (salmonInside || tunaInside || avoInside || carrotInside)) {
      food1 = "nothing";
      weedX = -1000;
      riceX = -1000;
      riceAssembly = false;
      riceCook = false;
      riceCooked = false;
      weedAssembly = false;

      sushi = false;
      sushiCut = false;
      sushiGrabbed = false;

      food1Assembly = false;
      food1Cutted = false;
      foodGrabbed1 = false;
      food1Grab = false;
      handgrab1 = 0;
      isTriggered = false;
      food2Assembly = false;
      food2Cutted = false;
      foodGrabbed2 = false;
      food2Grab = false;
      handgrab2 = 0;

      tunaInside = false;
      tuna = false;
      salmonInside = false;
      salmon = false;
      avoInside = false;
      avocado = false;
      carrotInside = false;
      carrot = false;
      sushiGrab = false;

      food1X = width-500*3/4;
      food1Y = 200*27/40;
      food2X = width-200*3/4;
      food2Y = 200*27/40;
    } else if (sushi && sushiGrab && !mousePressed && isTriggered && dist(mouseX, mouseY, 400*3/4, height-250*27/40) < 200*3/4 && (salmonInside || tunaInside || avoInside || carrotInside)) {
      food2 = "nothing";
      weedX = -1000;
      riceX = -1000;
      riceAssembly = false;
      riceCook = false;
      riceCooked = false;
      weedAssembly = false;

      sushi = false;
      sushiCut = false;
      sushiGrabbed = false;

      food2Assembly = false;
      food2Cutted = false;
      foodGrabbed2 = false;
      food2Grab = false;
      handgrab2 = 0;
      isTriggered = false;

      tunaInside = false;
      tuna = false;
      salmonInside = false;
      salmon = false;
      avoInside = false;
      avocado = false;
      carrotInside = false;
      carrot = false;
      sushiGrab = false;

      food2X = width-200*3/4;
      food2Y = 200*27/40;
    } else if (sushi && sushiGrab && !mousePressed && isTriggered && dist(mouseX, mouseY, width-500*3/4, 200*27/40) < 250 && food1Assembly && food2Assembly) {
      sushiGrabbed = true;
      sushiCut = false;
      food1Assembly = false;
      food2Assembly = false;
      isTriggered = false;
      sushiGrab = false;
      food1 = "sushi";
      food2 = "nothing";
      food1X = width-500*3/4;
      food1Y = 200*27/40;
      food1Width = 200*3/4;
      food1Height = 100*27/40;
    } else if (sushi && sushiGrab && !mousePressed && isTriggered && dist(mouseX, mouseY, width-500*3/4, 200*27/40) < 250 && !food2Assembly && food1Assembly) {
      sushiGrabbed = true;
      sushiCut = false;
      food1Assembly = false;
      isTriggered = false;
      sushiGrab = false;
      food1 = "sushi";
      food1X = width-500*3/4;
      food1Y = 200*27/40;
      food1Width = 200*3/4;
      food1Height = 100*27/40;
    } else if (sushi && sushiGrab && !mousePressed && isTriggered && dist(mouseX, mouseY, width-200*3/4, 200*27/40) < 250 && food2Assembly && !food1Assembly) {
      sushiGrabbed = true;
      sushiCut = false;
      food1Assembly = false;
      food2Assembly = false;
      isTriggered = false;
      sushiGrab = false;
      food2 = "sushi";
      food2X = width-200*3/4;
      food2Y = 200*27/40;
      food2Width = 200*3/4;
      food2Height = 100*27/40;
    } else if (sushi && sushiGrab && !mousePressed && !sushiGrabbed) {
      isTriggered = false;
      sushiGrab = false;
      riceX = width/2-25*3/4;
      riceY = height/2;
    }

    if (nigiri && nigiriCut && !nigiriGrab && !nigiriGrabbed && mousePressed && dist(mouseX, mouseY, width/2-175*3/4, height/2+125*27/40) < 250*3/4 && !knifeGrab && !food1Grab && !riceGrab && !weedGrab && !isTriggered) {
      nigiriGrab = true;
      isTriggered = true;
    } else if (nigiriGrab && isTriggered && mousePressed && (food1 == "tuna" || food1 == "salmon")) {
      riceX = -1000;
      food1X = mouseX;
      food1Y = mouseY;
    } else if (nigiriGrab && isTriggered && mousePressed && (food2 == "tuna" || food2 == "salmon")) {
      riceX = -1000;
      food2X = mouseX;
      food2Y = mouseY;
    } else if (nigiriGrab && !mousePressed && isTriggered && (food1 == "tuna" || food1 == "salmon") && dist(mouseX, mouseY, 400*3/4, height-250*27/40) < 200*3/4) {
      nigiriGrab = false;
      food1 = "nothing";
      food1Assembly = false;
      food1Cutted = false;
      foodGrabbed1 = false;
      food1X = width-500*3/4;
      food1Y = 200*27/40;
      food1Width = 200*3/4;
      food1Height = 200*27/40;
      riceAssembly = false;
      riceCooked = false;
      riceCook = false;
      riceX = -1000;
      riceWidth = 300*3/4;
      riceHeight = 500*27/40;
      salmonInside = false;
      tunaInside = false;
      avoInside = false;
      carrotInside = false;
      nigiri = false;
      nigiriGrabbed = false;
      nigiriCut = false;
      isTriggered = false;
    } else if (nigiriGrab && !mousePressed && isTriggered && (food2 == "tuna" || food2 == "salmon") && dist(mouseX, mouseY, 400*3/4, height-250*27/40) < 200*3/4) {
      nigiriGrab = false;
      food2 = "nothing";
      food2Assembly = false;
      food2Cutted = false;
      foodGrabbed2 = false;
      food2X = width-200*3/4;
      food2Y = 200*27/40;
      food2Width = 200*3/4;
      food2Height = 200*27/40;
      riceAssembly = false;
      riceCooked = false;
      riceCook = false;
      riceX = -1000;
      riceWidth = 300*3/4;
      riceHeight = 500*27/40;
      salmonInside = false;
      tunaInside = false;
      avoInside = false;
      carrotInside = false;
      nigiri = false;
      nigiriGrabbed = false;
      nigiriCut = false;
      isTriggered = false;
    } else if (nigiriCut && !mousePressed && isTriggered && (food1 == "tuna" || food1 == "salmon") && dist(mouseX, mouseY, width-500*3/4, 200*27/40) < 200*3/4) {
      nigiriGrabbed = true;
      nigiriGrab = false;
      nigiriCut = false;
      riceAssembly = false;
      riceCooked = false;
      riceCook = false;
      food1X = width-500*3/4;
      food1Y = 200*27/40;
      food1 = "nigiri";
      isTriggered = false;
    } else if (nigiriCut && isTriggered && !mousePressed && (food2 == "tuna" || food2 == "salmon") && dist(mouseX, mouseY, width-200*3/4, 200*27/40) < 200*3/4) {
      nigiriGrabbed = true;
      nigiriGrab = false;
      nigiriCut = false;
      riceAssembly = false;
      riceCooked = false;
      riceCook = false;
      food2X = width-200*3/4;
      food2Y = 200*27/40;
      food2 = "nigiri";
      isTriggered = false;
    } else if (nigiriGrab && isTriggered && !mousePressed && (food1 == "tuna" || food1 == "salmon")) {
      nigiriGrab = false;
      food1X = width/2-25*3/4;
      food1Y = height/2;
      isTriggered = false;
    } else if (nigiriGrab && isTriggered && !mousePressed && (food2 == "tuna" || food2 == "salmon")) {
      nigiriGrab = false;
      food2X = width/2-25*3/4;
      food2Y = height/2;
      isTriggered = false;
    }
  }

  if (orderOutline > 0) orderOutline -= 3;
  if (inventory1Outline > 0) inventory1Outline -= 3;
  if (inventory2Outline > 0) inventory2Outline -= 3;

  if (food1 != previousInventory1 && food1 != "nothing" && food1 != null) inventory1Outline = 255;
  if (food2 != previousInventory2 && food2 != "nothing" && food2 != null) inventory2Outline = 255;

  previousInventory1 = food1;
  previousInventory2 = food2;

  if (room == "ingredients" || room == "kitchen") {

    imageMode(CORNER);

    push();
    fill(255, sqrt(orderOutline * 255));
    noStroke();
    rect(50*3/4 - 4, 50*27/40 - 4, 587*3/4 + 8, 157*27/40 + 8, 10, 10, 10, 10);
    image(textPaper, 50*3/4, 50*27/40, 587*3/4, 157*27/40);
    tint(255, 200);
    image(cointimePaper, 50*3/4, 250*27/40, 452*3/4, 151*27/40);
    image(cointimePaper, 50*3/4, 450*27/40, 452*3/4, 151*27/40);
    pop();

    image(coinIcon, 75*3/4, 267*27/40, 597*0.15*3/4, 842*0.15*27/40);
    image(timerIcon, 75*3/4, 460*27/40, 615*0.15*3/4, 842*0.15*27/40);

    textFont(catFont);
    fill(0);
    textSize(45*27/40);
    textAlign(CENTER, CENTER);
    text("\"" + customerWish + "\"", 60*3/4, 60*27/40, (587-25)*3/4, (157-25)*27/40);

    imageMode(CENTER);

    push();
    rectMode(CENTER);

    fill(255, sqrt(inventory1Outline * 255));
    noStroke();
    rect(width-500*3/4, 200*27/40, 225*3/4 + 8, 225*27/40 + 8, 10, 10, 10, 10);
    image(inventory, width-500*3/4, 200*27/40, 225*3/4, 225*27/40);

    fill(255, sqrt(inventory2Outline * 255));
    noStroke();
    rect(width-200*3/4, 200*27/40, 225*3/4 + 8, 225*27/40 + 8, 10, 10, 10, 10);
    image(inventory, width-200*3/4, 200*27/40, 225*3/4, 225*27/40);
    pop();

    if (riceTimer > 0 && currentSec != second() && riceCook && timer) {
      riceTimer -= 1;
      currentSec = second();
    } else if (riceTimer <= 0 && riceCook) {
      riceCooked = true;
    }

    imageMode(CENTER);

    if (!weedAssembly && riceAssembly && food1Assembly && nigiriCut) {
      food1Width = 400*3/4;
      food1Height = 200*27/40;
      if (salmonInside) {
        image(salmonNigiri, food1X, food1Y, food1Width, food1Height);
      } else if (tunaInside) {
        food1Width = 400*3/4;
        food1Height = 200*27/40;
        image(tunaNigiri, food1X, food1Y, food1Width, food1Height);
      }
    }

    if (food1 == "sushi" && sushiGrabbed && sushi) {
      food1X = width-500*3/4;
      food1Y = 200*27/40;
      food1Width = 200*3/4;
      food1Height = 200*27/40;
      if (tunaInside && avoInside && !sushiCut && food1 == "sushi") {
        image(avoTuna, food1X, food1Y, 200*3/4, 200*27/40);
      } else if (tunaInside && carrotInside && !sushiCut && food1 == "sushi") {
        image(carrotTuna, food1X, food1Y, 200*3/4, 200*27/40);
      } else if (salmonInside && avoInside && !sushiCut && food1 == "sushi") {
        image(avoSalmon, food1X, food1Y, 200*3/4, 200*27/40);
      } else if (salmonInside && carrotInside && !sushiCut && food1 == "sushi") {
        image(carrotSalmon, food1X, food1Y, 200*3/4, 200*27/40);
      } else if (salmonInside && !sushiCut && food1 == "sushi") {
        image(salmonSushi, food1X, food1Y, 200*3/4, 200*27/40);
      } else if (tunaInside && !sushiCut && food1 == "sushi") {
        image(tunaSushi, food1X, food1Y, 200*3/4, 200*27/40);
      } else if (avoInside && !sushiCut && food1 == "sushi") {
        image(avoSushi, food1X, food1Y, 200*3/4, 200*27/40);
      } else if (carrotInside && !sushiCut && food1 == "sushi") {
        image(carrotSushi, food1X, food1Y, 200*3/4, 200*27/40);
      }
    } else if (food1 == "nigiri" && nigiriGrabbed && !nigiriCut) {
      food1Y = 212*27/40;
      food1Width = 200*3/4;
      food1Height = 150*27/40;
      if (salmonInside) {
        image(salmonNigiriInv, food1X, food1Y, food1Width, food1Height);
      } else if (tunaInside) {
        image(tunaNigiriInv, food1X, food1Y, food1Width, food1Height);
      }
    }

    if (!food1Cutted && (!sushiIngr1 && !sushiIngr2) && food1 != "nigiri") {
      if (food1 == "salmon" && food1 != "nigiri") {
        if (food1X != width-500*3/4 && food1Y != 200*27/40) {
          food1Width = 200*3/4;
          food1Height = 200*27/40;
          image(salmonUncut, food1X, food1Y, food1Width, food1Height);
        } else {
          food1Width = 200*3/4;
          food1Height = 200*27/40;
          image(salmonUncutInv, food1X, food1Y-10, food1Width, food1Height);
        }
      } else if (food1 == "tuna" && food1 != "nigiri") {
        if (food1X != width-500*3/4 && food1Y != 200*27/40) {
          food1Width = 200*3/4;
          food1Height = 200*27/40;
          image(tunaUncut, food1X, food1Y, food1Width, food1Height);
        } else {
          food1Width = 200*3/4;
          food1Height = 200*27/40;
          image(tunaUncutInv, food1X+20*3/4, food1Y-20, food1Width, food1Height);
        }
      } else if (food1 == "avocado") {
        if (food1X != width-500*3/4 && food1Y != 200*27/40) {
          food1Width = 200*3/4;
          food1Height = 200*27/40;
          image(avoUncut, food1X, food1Y, food1Width, food1Height);
        } else {
          food1Width = 200*3/4;
          food1Height = 200*27/40;
          image(avoUncutInv, food1X, food1Y-10, food1Width, food1Height);
        }
      } else if (food1 == "carrot") {
        if (food1X != width-500*3/4 && food1Y != 200*27/40) {
          food1Width = 200*3/4;
          food1Height = 200*27/40;
          image(carrotUncut, food1X, food1Y, food1Width, food1Height);
        } else {
          food1Width = 200*3/4;
          food1Height = 200*27/40;
          image(carrotUncutInv, food1X, food1Y-10, food1Width, food1Height);
        }
      }
    } else if (!weedAssembly && riceAssembly && food1Assembly && nigiriCut) {
      food1Width = 400*3/4;
      food1Height = 200*27/40;
      if (salmonInside) {
        image(salmonNigiri, food1X, food1Y, food1Width, food1Height);
      } else if (tunaInside) {
        image(tunaNigiri, food1X, food1Y, food1Width, food1Height);
      }
    } else if (food1Cutted && (!sushiIngr1 && !sushiIngr2) && food1 != "nigiri") {
      if (food1 == "salmon") {
        if (food1X != width-500*3/4 && food1Y != 200*27/40) {
          food1Width = 100*3/4;
          food1Height = 100*27/40;
          image(salmonStrip, food1X, food1Y, food1Width, food1Height);
        } else {
          food1Width = 200*3/4;
          food1Height = 200*27/40;
          image(salmonCutInv, food1X, food1Y-10, food1Width, food1Height);
        }
      } else if (food1 == "tuna") {
        if (food1X != width-500*3/4 && food1Y != 200*27/40) {
          food1Width = 100*3/4;
          food1Height = 100*27/40;
          image(tunaStrip, food1X, food1Y, food1Width, food1Height);
        } else {
          food1Width = 200*3/4;
          food1Height = 200*27/40;
          image(tunaCutInv, food1X, food1Y-10, food1Width, food1Height);
        }
      } else if (food1 == "avocado") {
        if (food1X != width-500*3/4 && food1Y != 200*27/40) {
          food1Width = 100*3/4;
          food1Height = 100*27/40;
          image(avoStrip, food1X, food1Y, food1Width, food1Height);
        } else {
          food1Width = 200*3/4;
          food1Height = 200*27/40;
          image(avoCutInv, food1X, food1Y-10, food1Width, food1Height);
        }
      } else if (food1 == "carrot") {
        if (food1X != width-500*3/4 && food1Y != 200*27/40) {
          food1Width = 100*3/4;
          food1Height = 100*27/40;
          image(carrotStrip, food1X, food1Y, food1Width, food1Height);
        } else {
          food1Width = 200*3/4;
          food1Height = 200*27/40;
          image(carrotCutInv, food1X, food1Y-10, food1Width, food1Height);
        }
      }
    }

    if (sushiCut && sushi) {
      image(sushiFinish, riceX, riceY, 300, 135);
    }
    if (salmonInside && !sushiCut && food2 == "sushi") {
      image(salmonSushi, food2X, food2Y, 200*3/4, 200*27/40);
    } else if (tunaInside && !sushiCut && food2 == "sushi") {
      image(tunaSushi, food2X, food2Y, 200*3/4, 200*27/40);
    } else if (avoInside && !sushiCut && food2 == "sushi") {
      image(avoSushi, food2X, food2Y, 200*3/4, 200*27/40);
    } else if (carrotInside && !sushiCut && food2 == "sushi") {
      image(carrotSushi, food2X, food2Y, 200*3/4, 200*27/40);
    } else if (food2 == "nigiri" && nigiriGrabbed && !nigiriCut) {
      food2Y = 212*27/40;
      food2Width = 200*3/4;
      food2Height = 150*27/40;
      if (salmonInside) {
        image(salmonNigiriInv, food2X, food2Y-10, food2Width, food2Height);
      } else if (tunaInside) {
        image(tunaNigiriInv, food2X, food2Y-10, food2Width, food2Height);
      }
    }

    if (!food2Cutted && (!sushiIngr1 && !sushiIngr3) && food2 != "nigiri") {
      if (food2 == "salmon") {
        if (food2X != width-200*3/4 && food2Y != 200*27/40) {
          food2Width = 200*3/4;
          food2Height = 200*27/40;
          image(salmonUncut, food2X, food2Y, food2Width, food2Height);
        } else {
          food2Width = 200*3/4;
          food2Height = 200*27/40;
          image(salmonUncutInv, food2X, food2Y-10, food2Width, food2Height);
        }
      } else if (food2 == "tuna") {
        if (food2X != width-200*3/4 && food2Y != 200*27/40) {
          food2Width = 200*3/4;
          food2Height = 200*27/40;
          image(tunaUncut, food2X, food2Y, food2Width, food2Height);
        } else {
          food2Width = 200*3/4;
          food2Height = 200*27/40;
          image(tunaUncutInv, food2X+20*3/4, food2Y-20, food2Width, food2Height);
        }
      } else if (food2 == "avocado") {
        if (food2X != width-200*3/4 && food2Y != 200*27/40) {
          food2Width = 200*3/4;
          food2Height = 200*27/40;
          image(avoUncut, food2X, food2Y, food2Width, food2Height);
        } else {
          food2Width = 200*3/4;
          food2Height = 200*27/40;
          image(avoUncutInv, food2X, food2Y-10, food2Width, food2Height);
        }
      } else if (food2 == "carrot") {
        if (food2X != width-200*3/4 && food2Y != 200*27/40) {
          food2Width = 200*3/4;
          food2Height = 200*27/40;
          image(carrotUncut, food2X, food2Y, food2Width, food2Height);
        } else {
          food2Width = 200*3/4;
          food2Height = 200*27/40;
          image(carrotUncutInv, food2X, food2Y-10, food2Width, food2Height);
        }
      }
    } else if (!weedAssembly && riceAssembly && food2Assembly && nigiriCut) {
      food2Width = 400*3/4;
      food2Height = 200*27/40;
      if (salmonInside) {
        image(salmonNigiri, food2X, food2Y, food2Width, food2Height);
      } else if (tunaInside) {
        image(tunaNigiri, food2X, food2Y, food2Width, food2Height);
      }
    } else if (food2Cutted && (!sushiIngr1 && !sushiIngr3) && food2 != "nigiri") {
      if (food2 == "salmon" && food2 != "nigiri") {
        if (food2X != width-200*3/4 && food2Y != 200*27/40) {
          food2Width = 100*3/4;
          food2Height = 100*27/40;
          image(salmonStrip, food2X, food2Y, food2Width, food2Height);
        } else {
          food2Width = 200*3/4;
          food2Height = 200*27/40;
          image(salmonCutInv, food2X, food2Y-10, food2Width, food2Height);
        }
      } else if (food2 == "tuna" && food2 != "nigiri") {
        if (food2X != width-200*3/4 && food2Y != 200*27/40) {
          food2Width = 100*3/4;
          food2Height = 100*27/40;
          image(tunaStrip, food2X, food2Y, food2Width, food2Height);
        } else {
          food2Width = 200*3/4;
          food2Height = 200*27/40;
          image(tunaCutInv, food2X, food2Y-10, food2Width, food2Height);
        }
      } else if (food2 == "avocado") {
        if (food2X != width-200*3/4 && food2Y != 200*27/40) {
          food2Width = 100*3/4;
          food2Height = 100*27/40;
          image(avoStrip, food2X, food2Y, food2Width, food2Height);
        } else {
          food2Width = 200*3/4;
          food2Height = 200*27/40;
          image(avoCutInv, food2X, food2Y-10, food2Width, food2Height);
        }
      } else if (food2 == "carrot") {
        if (food2X != width-200*3/4 && food2Y != 200*27/40) {
          food2Width = 100*3/4;
          food2Height = 100*27/40;
          image(carrotStrip, food2X, food2Y, food2Width, food2Height);
        } else {
          food2Width = 200*3/4;
          food2Height = 200*27/40;
          image(carrotCutInv, food2X, food2Y-10, food2Width, food2Height);
        }
      }
    }

    if (customerServed%2 == 0 && customer1Y > height-175 && dist(customer1X, customer1Y, width/2, height-75) > 5) {
      customer1Y -= 5;
    } else if (customerServed%2 == 0 && customer1Y > height-175 && dist(customer1X, customer1Y, width/2, height-75) < 5) {
      customer1Y -= 1;
    } else if (customerServed%2 == 1 && customer1Y < height+500) {
      customer1Y += 10;
    } else if (customer1Y > height+400) {
      DiffCustomer1 = true;
    }

    if (dist(customer1X, customer1Y, width/2, height-75) > 90 && dist(customer1X, customer1Y, width/2, height-75) < 95 && !customer1Coming && !customer1Here) {
      customer1Coming = true;
    }

    if (customerServed%2 == 1 && customer2Y > height-175 && dist(customer2X, customer2Y, width/2, height+150) > 5) {
      customer2Y -= 5;
    } else if (customerServed%2 == 1 && customer2Y > height-175 && dist(customer2X, customer2Y, width/2, height+150) < 5) {
      customer2Y -= 1;
    } else if (customerServed%2 == 0 && customer2Y < height+500) {
      customer2Y += 10;
    } else if (customer2Y > height+400) {
      DiffCustomer2 = true;
    }

    if (dist(customer2X, customer2Y, width/2, height+150) > 90 && dist(customer2X, customer2Y, width/2, height+150) < 95 && !customer2Coming && !customer2Here) {
      customer2Coming = true;
    }

    if (customer1Coming && !customer1Here) {
      customerOrder.play();
      customer1Here = true;
    } else if (dist(customer1X, customer1Y, width/2, height-75) > 200) {
      customer1Coming = false;
      customer1Here = false;
    }
    if (customer2Coming && !customer2Here) {
      customerOrder.play();
      customer2Here = true;
    } else if (dist(customer2X, customer2Y, width/2, height+150) > 200) {
      customer2Coming = false;
      customer2Here = false;
    }
  }

  if (room == "kitchen") {

    if (mousePressed && dist(mouseX, mouseY, width-200, height-200) < 200*3/4 && !isSwitching) {
      startFade();
      isSwitching = true;
      foodCut1 = false;
      foodCut2 = false;
      food1Grab = false;
      food2Grab = false;
      riceGrab = false;
      weedGrab = false;
      if (weedAssembly && riceAssembly && sushi && food1Assembly && food2Assembly) {
        sushiGrabbed = true;
        sushiCut = false;
        food1Assembly = false;
        food2Assembly = false;
        isTriggered = false;
        sushiGrab = false;
        food1 = "sushi";
        food2 = "nothing";
        food1X = width-500*3/4;
        food1Y = 200*27/40;
        food1Width = 200*3/4;
        food1Height = 100*27/40;
      } else if (weedAssembly && riceAssembly && sushi && food1Assembly && !food2Assembly) {
        sushiGrabbed = true;
        sushiCut = false;
        food1Assembly = false;
        isTriggered = false;
        sushiGrab = false;
        food1 = "sushi";
        food1X = width-500*3/4;
        food1Y = 200*27/40;
        food1Width = 200*3/4;
        food1Height = 100*27/40;
      } else if (weedAssembly && riceAssembly && sushi && !food1Assembly && food2Assembly) {
        sushiGrabbed = true;
        sushiCut = false;
        food2Assembly = false;
        isTriggered = false;
        sushiGrab = false;
        food2 = "sushi";
        food2X = width-200*3/4;
        food2Y = 200*27/40;
        food2Width = 200*3/4;
        food2Height = 100*27/40;
      } else if (!weedAssembly && riceAssembly && food1Assembly) {
        nigiriGrabbed = true;
        food1X = width-500*3/4;
        food1Y = 200*27/40;
        food1 = "nigiri";
        riceAssembly = false;
        riceCooked = false;
        riceCook = false;
      } else if (!weedAssembly && riceAssembly && food2Assembly) {
        nigiriGrabbed = true;
        food2X = width-200*3/4;
        food2Y = 200*27/40;
        food2 = "nigiri";
        riceAssembly = false;
        riceCooked = false;
        riceCook = false;
      }
      food1Assembly = false;
      food2Assembly = false;
      posX = width/2;
      posY = 950*27/40;
      sushiCut = false;
      nigiriCut = false;
      curSec = second();
    }

    if (sushi && food1Assembly && food2Assembly) {
      sushiIngr1 = true;
    } else if (sushi && food1Assembly && !food2Assembly) {
      sushiIngr2 = true;
    } else if (sushi && !food1Assembly && food2Assembly) {
      sushiIngr3 = true;
    }

    if (dist(mouseX, mouseY, knifeX, knifeY) < 100*3/4 && !isTriggered && !food1Grab && !food2Grab && !riceGrab && !weedGrab && mousePressed && !sushiGrab && !nigiriGrab) {
      isTriggered = true;
      knifeGrab = true;
    } else if (mousePressed && !sushiCut && dist(knifeX, knifeY, riceX, riceY) < 250*3/4 && sushi) {
      food1 = "sushi";
      food2 = "nothing";
      sushiCut = true;
      riceWidth = 0;
      riceHeight = 0;
      weedX = -1000;
      cutting.play();
    } else if (mousePressed && !sushiCut && dist(knifeX, knifeY, riceX, riceY) < 250*3/4 && riceAssembly && weedAssembly && (food1Assembly || food2Assembly)) {
      sushi = true;
      sushiCut = true;
      riceWidth = 0;
      riceHeight = 0;
      weedX = -1000;
      cutting.play();
    } else if (mousePressed && dist(knifeX, knifeY, riceX, riceY) < 75*3/4 && !weedAssembly && riceAssembly && knifeGrab && isTriggered && (food1Assembly || food2Assembly)) {
      nigiriCut = true;
      nigiri = true;
      riceX = -1000;
      knifeX = mouseX;
      knifeY = mouseY;
      cutting.play();
    } else if (!nigiriCut && dist(knifeX, knifeY, riceX, riceY) < 250*3/4 && nigiri && food1Assembly) {
      food1 = "nigiri";
      nigiriCut = true;
      cutting.play();
    } else if (!nigiriCut && dist(knifeX, knifeY, riceX, riceY) < 250*3/4 && nigiri && food2Assembly) {
      food2 = "nigiri";
      nigiriCut = true;
      cutting.play();
    } else if (knifeGrab && !mousePressed && isTriggered) {
      knifeGrab = false;
      isTriggered = false;
      knifeX = width/2+350*3/4;
      knifeY = height/2-50*27/40;
    } else if (knifeGrab && isTriggered && mousePressed && !riceGrab) {
      knifeX = mouseX;
      knifeY = mouseY;
    } else {
      knifeGrab = false;
      knifeX = width/2+350*3/4;
      knifeY = height/2-50*27/40;
    }

    if (knifeGrab) {
      imageMode(CENTER);
      image(knifeHold, knifeX, knifeY, 100*3/4, 200*27/40);
    } else {
      imageMode(CENTER);
      image(knifeIdle, knifeX, knifeY, 150*3/4, 200*27/40);
    }
  }

  if (gameTimer <= 0) {
    room = "endscreen";
  }

  if (room == "endscreen" && mousePressed && mouseX > width/2-200 && mouseX < width/2+200 && mouseY > height-150 && mouseY < height-50) {
    restartGame();
  }

  if (room == "ingredients") {
    push();
    tint(0, 100);
    imageMode(CENTER);
    if (mouseX >= width-500*3/4 - (255 * 3/4)/2 && mouseX <= width-500*3/4 + (255 * 3/4)/2 && mouseY >= 200*27/40 - (225*27/40)/2 && mouseY <= 200*27/40 + (225*27/40)/2) {
      image(xIcon, width-500*3/4 + 3, 200*27/40, 225*3/4 - 100, 225*3/4 - 100);
    }
    if (mouseX >= width-200*3/4 - (255 * 3/4)/2 && mouseX <= width-200*3/4 + (255 * 3/4)/2 && mouseY >= 200*27/40 - (225*27/40)/2 && mouseY <= 200*27/40 + (225*27/40)/2) {
      image(xIcon, width-200*3/4 + 3, 200*27/40, 225*3/4 - 100, 225*3/4 - 100);
    }
    pop();
  }

  if (room != "endscreen" && room != "startScreen") {
    updategameTimer();
    updateCoins();
  } else {
    push();
    imageMode(CORNER);
    if (coins >= coinGoal) {
      image(endScreenWin, 0, 0, width, height);
    } else if (coins < coinGoal) {
      image(endScreenLose, 0, 0, width, height);
    }

    imageMode(CENTER);
    image(cointimePaper, width/2, height-300, 452, 151);
    image(coinIcon, width/2-146, height-300, 597*0.15, 842*0.15);

    textSize(72);
    textAlign(CENTER, CENTER);
    rectMode(CENTER);
    if (coins < coinGoal) fill(180, 0, 0);
    else fill(0);
    text(coins + " / " + coinGoal, width/2+30, height-300, 300, 100);
    pop();
  }

  //lana added
  if (room == "startScreen") {
    gameTimer = 240;
    imageMode(CORNER);
    image(startScreen, 0, 0, width, height);
    imageMode(CENTER);
    image(startButton, width/2, (height/4)*3, width/5, height/6);

    if (mouseX>(width/2-width/10) && mouseX<(width/2+width/10) && mouseY>((height/4)*3-height/12) && mouseY<((height/4)*3+height/12)) {
      tint(0, 60);
      image(startButton, width/2, (height/4)*3, width/5, height/6);
      noTint();
      if (mousePressed) {
        room = "ingredients";
      }
    }
  }
  drawFade();
  
  noCursor();
  image(pawCursor, mouseX, mouseY, 267/3.52, 352/3.52);
}

void updategameTimer() {
  if (!gameOver) {
    gameTimer -= 1 / frameRate;

    String gameTimerDisplay = floor(ceil(gameTimer) / 60) + ":" + (ceil(gameTimer) % 60 < 10 ? "0" : "") + ceil(gameTimer) % 60;

    push();
    textSize(72*27/40);
    textAlign(CENTER, CENTER);
    fill(0);
    text(gameTimerDisplay, 150*3/4, 470*27/40, 300*3/4, 100*27/40);
    pop();

    if (gameTimer <= 0) gameOver = true;
  }
}

void updateCoins() {
  push();
  textSize(72*27/40);
  textAlign(CENTER, CENTER);
  if (coins < coinGoal) fill(180, 0, 0);
  else fill(0);
  text(coins + " / " + coinGoal, 150*3/4, 275*27/40, 300*3/4, 100*27/40);
  pop();
}

int getCoinReward(int t) {
  return round(2.3 * log(t + 4) / log(2));
}
