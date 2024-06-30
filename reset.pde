void reset() {
    //randomCustomerWish = int(random(0, numberOfCombinations));
    //customerWish = "press mouse";
    //result = "Assemble an order";
    ///ready = false;
    customerTimer.timeLeft = 30;
    
    orderOutline = 255;
    
    fishIsNotImportant = false;
    vegetablesAreNotImportant = false;
    typeIsNotImportant = false;
    
    customerWantsFish=false;
    customerWantsSalmon=false;
    customerWantsTuna=false;
    
    customerWantsNoFish=false;
    customerWantsNoSalmon=false;
    customerWantsNoTuna=false;
    
    customerWantsVegetables=false;
    customerWantsAvokado=false;
    customerWantsCarrot=false;
    
    customerWantsNoVegetables=false;
    customerWantsNoAvokado=false;
    customerWantsNoCarrot=false;
    
    customerWantsAnyForm=false;
    customerWantsRoll=false;
    customerWantsNigiri=false;
    
    dishHasFish=false;
    dishHasSalmon=false;
    dishHasTuna=false;

    dishHasVegetables=false;
    dishHasAvokado=false;
    dishHasCarrot=false;

    dishIsRoll=false;
    dishIsNigiri=false;

    fishIsValid = false;
    vegetablesAreValid = false;
    typeIsValid = false;

    dishIsValid = false;

    alreadyExecutedCheckDish = false;
    
   // getText();
}
