boolean fishIsNotImportant = false;
boolean vegetablesAreNotImportant = false;
boolean typeIsNotImportant = false;

boolean customerWantsFish=false;
boolean customerWantsSalmon=false;
boolean customerWantsTuna=false;

boolean customerWantsNoFish=false;
boolean customerWantsNoSalmon=false;
boolean customerWantsNoTuna=false;

boolean customerWantsVegetables=false;
boolean customerWantsAvokado=false;
boolean customerWantsCarrot=false;

boolean customerWantsNoVegetables=false;
boolean customerWantsNoAvokado=false;
boolean customerWantsNoCarrot=false;

boolean customerWantsAnyForm=false;
boolean customerWantsRoll=false;
boolean customerWantsNigiri=false;

void checkIngredients() {

  if (randomCustomerWish == 0) {
    fishIsNotImportant = true;
    vegetablesAreNotImportant = true;
    typeIsNotImportant = true;
  }

  if (randomCustomerWish == 1) {
    fishIsNotImportant = true;
    vegetablesAreNotImportant = true;
    customerWantsRoll = true;
  }

  if (randomCustomerWish == 2) {
    customerWantsFish = true;
    customerWantsNoVegetables = true;
    customerWantsNigiri = true;
  }

  if (randomCustomerWish == 3) {
    customerWantsFish = true;
    customerWantsNoVegetables = true;
    typeIsNotImportant = true;
  }

  if (randomCustomerWish == 4) {
    customerWantsNoFish = true;
    customerWantsVegetables = true;
    customerWantsRoll = true;
  }

  if (randomCustomerWish == 5) {
    customerWantsVegetables = true;
    customerWantsFish = true;
    customerWantsRoll = true;
  }

  if (randomCustomerWish == 6) {
    customerWantsFish = true;
    vegetablesAreNotImportant = true;
    typeIsNotImportant = true;
  }

  if (randomCustomerWish == 7) {
    fishIsNotImportant = true;
    customerWantsVegetables = true;
    customerWantsRoll = true;
  }

  if (randomCustomerWish == 8) {
    customerWantsSalmon = true;
    vegetablesAreNotImportant = true;
    typeIsNotImportant = true;
  }

  if (randomCustomerWish == 9) {
    customerWantsTuna = true;
    vegetablesAreNotImportant = true;
    typeIsNotImportant = true;
  }

  if (randomCustomerWish == 10) {
    fishIsNotImportant = true;
    customerWantsAvokado = true;
    customerWantsRoll = true;
  }

  if (randomCustomerWish == 11) {
    fishIsNotImportant = true;
    customerWantsCarrot = true;
    customerWantsRoll = true;
  }

  if (randomCustomerWish == 12) {
    customerWantsRoll = true;
    customerWantsFish = true;
    customerWantsNoVegetables = true;
  }

  if (randomCustomerWish == 13) {
    customerWantsRoll = true;
    customerWantsNoFish = true;
    customerWantsVegetables = true;
  }

  if (randomCustomerWish == 14) {
    customerWantsRoll = true;
    customerWantsFish = true;
    customerWantsVegetables = true;
  }

  if (randomCustomerWish == 15) {
    customerWantsRoll = true;
    customerWantsSalmon = true;
    customerWantsNoVegetables = true;
  }

  if (randomCustomerWish == 16) {
    customerWantsRoll = true;
    customerWantsTuna = true;
    customerWantsNoVegetables = true;
  }

  if (randomCustomerWish == 17) {
    customerWantsRoll = true;
    customerWantsAvokado = true;
    customerWantsNoFish = true;
  }

  if (randomCustomerWish == 18) {
    customerWantsRoll = true;
    customerWantsCarrot = true;
    customerWantsNoFish = true;
  }

  if (randomCustomerWish == 19) {
    customerWantsRoll = true;
    customerWantsAvokado = true;
    customerWantsSalmon = true;
  }

  if (randomCustomerWish == 20) {
    customerWantsRoll = true;
    customerWantsCarrot = true;
    customerWantsSalmon = true;
  }

  if (randomCustomerWish == 21) {
    customerWantsRoll = true;
    customerWantsAvokado = true;
    customerWantsTuna = true;
  }

  if (randomCustomerWish == 22) {
    customerWantsRoll = true;
    customerWantsCarrot = true;
    customerWantsTuna = true;
  }

  if (randomCustomerWish == 23) {
    customerWantsNigiri = true;
    customerWantsSalmon = true;
    customerWantsNoVegetables = true;
  }

  if (randomCustomerWish == 24) {
    customerWantsNigiri = true;
    customerWantsTuna = true;
    customerWantsNoVegetables = true;
  }

  if (randomCustomerWish == 25) {
    customerWantsRoll = true;
    customerWantsSalmon = true;
    customerWantsVegetables = true;
  }

  if (randomCustomerWish == 26) {
    customerWantsRoll = true;
    customerWantsTuna = true;
    customerWantsVegetables = true;
  }

  if (randomCustomerWish == 27) {
    customerWantsRoll = true;
    customerWantsAvokado = true;
    customerWantsFish = true;
  }

  if (randomCustomerWish == 28) {
    customerWantsRoll = true;
    customerWantsCarrot = true;
    customerWantsFish = true;
  }

  if (randomCustomerWish == 29) {
    customerWantsSalmon = true;
    customerWantsNoVegetables = true;
    typeIsNotImportant = true;
  }

  if (randomCustomerWish == 30) {
    customerWantsTuna = true;
    customerWantsNoVegetables = true;
    typeIsNotImportant = true;
  }
}
