boolean dishHasFish=false;
boolean dishHasSalmon=false;
boolean dishHasTuna=false;

boolean dishHasVegetables=false;
boolean dishHasAvokado=false;
boolean dishHasCarrot=false;

boolean dishIsRoll=false;
boolean dishIsNigiri=false;

boolean fishIsValid = false;
boolean vegetablesAreValid = false;
boolean typeIsValid = false;

boolean dishIsValid = false;

boolean alreadyExecutedCheckDish = false;

boolean dishIsReady = false;

String result;

void checkDish() {
  
  if (fishIsNotImportant) {
    fishIsValid = true;
  }

  if (vegetablesAreNotImportant) {
    vegetablesAreValid = true;
  }

  if (typeIsNotImportant) {
    typeIsValid = true;
  }

  if (customerWantsFish && dishHasFish) {
    fishIsValid = true;
  }

  if (customerWantsSalmon && dishHasSalmon) {
    fishIsValid = true;
  }

  if (customerWantsTuna && dishHasTuna) {
    fishIsValid = true;
  }

  if (customerWantsNoFish && dishHasFish==false) {
    fishIsValid = true;
  }

  if (customerWantsNoSalmon && dishHasSalmon==false) {
    fishIsValid = true;
  }

  if (customerWantsNoTuna && dishHasTuna==false) {
    fishIsValid = true;
  }

  if (customerWantsVegetables && dishHasVegetables) {
    vegetablesAreValid = true;
  }

  if (customerWantsAvokado && dishHasAvokado) {
    vegetablesAreValid = true;
  }

  if (customerWantsCarrot && dishHasCarrot) {
    vegetablesAreValid = true;
  }

  if (customerWantsNoVegetables && dishHasVegetables==false) {
    vegetablesAreValid = true;
  }

  if (customerWantsNoAvokado && dishHasAvokado==false) {
    vegetablesAreValid = true;
  }

  if (customerWantsNoCarrot && dishHasCarrot==false) {
    vegetablesAreValid = true;
  }

  if (customerWantsRoll && dishIsRoll) {
    typeIsValid = true;
  }

  if (customerWantsNigiri && dishIsNigiri) {
    typeIsValid = true;
  }



  if (fishIsValid && vegetablesAreValid && typeIsValid) {
    dishIsValid = true;
  }

  if (!alreadyExecutedCheckDish) {
    if (dishIsValid) {
      println("dish is valid");
      result = "Customer is satisfied!";
    } else {
      println("dish is not valid");
      result = "Customer is disappointed :(";
    }

    alreadyExecutedCheckDish = true;
  }
}
