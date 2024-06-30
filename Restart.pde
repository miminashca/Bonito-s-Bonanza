void restartGame() {
    isTriggered = false;
    
    riceAssembly = false;
    salmonAssembly = false;
    tunaAssembly = false;
    avoAssembly = false;
    carrotAssembly = false;

    salmonCut = false;
    tunaCut = false;
    avoCut = false;
    carrotCut = false;
    
    playerX = 0;
    playerY = 0;
    
    posX = playerX;
    posY = playerY;
    
    cookX = 1280;
    cookY = 200;
    cookWidth = 800;
    cookHeight = 200;
    
    cookX = 1280;
    cookY = 200;
    cookWidth = 800;
    cookHeight = 200;
    
    avocado = false;
    salmon = false;
    tuna = false;
    carrot = false;
    
    foodGrabbed1 = false;
    foodGrabbed2 = false;
    foodCut1 = false;
    foodCut2 = false;
    
    handgrab1 = 0;
    handgrab2 = 0;
    
    food1 = null;
    food2 = null;
    
    food1Cutted = false;
    food2Cutted = false;
    food1Width = 200;
    food1Height = 200;
    food2Width = 200;
    food2Height = 200;
    
    riceGrab = false;
    riceCook = false;
    riceCooked = false;
    timer = false;
    
    weedGrab = false;
    weedAssembly = false;
    
    riceX = -1000;
    riceY = 0;
    riceWidth = 0;
    riceHeight = 0;
    riceTimer = 0;
    currentSec = 0;
    
    weedX = -1000;
    weedY = 0;
    weedWidth = 450;
    weedHeight = 150;
    
    food1Grab = false;
    food1X = 0;
    food1Y = 0;
    food1Assembly = false;
    
    food2Grab = false;
    food2X = 0;
    food2Y = 0;
    food2Assembly = false;
    
    knifeGrab = false;
    knifeX = 0;
    knifeY = 0;
    
    sushi = false;
    sushiCut = false;
    sushiGrab = false;
    sushiGrabbed = false;

    nigiri = false;
    nigiriCut = false;
    nigiriGrab = false;
    nigiriGrabbed = false;

    avoInside = false;
    tunaInside = false;
    salmonInside = false;
    carrotInside = false;
    
    customerServed = -1;
    
    coins = 0;
    gameTimer = 240;

    gameOver = false;
    
    previousPlayerX = 0;
    previousPlayerY = 0;
    playerImageFrame = 0;
    
    sushiIngr1 = false;
    sushiIngr2 = false;
    sushiIngr3 = false;
    
    customer1X = 0;
    customer1Y = 0;
    customer2X = 0;
    customer2Y = 0;
    customerWidth = 207;
    customerHeight = 296;

    DiffCustomer1 = false;
    DiffCustomer2 = false;

    customer1Changer = int(random(1, 5));
    customer2Changer = int(random(1, 5));
    reset();
    
    randomCustomerWish = int(random(0, numberOfCombinations));
    customerWish = replics.get(randomCustomerWish);
    checkIngredients();
    
    curSec = second();
    
    reset();
    
    room = "ingredients";
}
