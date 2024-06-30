boolean alreadyExecutedText = false;
String customerWish;
int randomCustomerWish;

void getText() {
  if (!alreadyExecutedText) {
    randomCustomerWish = int(random(0, numberOfCombinations));
    customerWish = replics.get(randomCustomerWish);
    alreadyExecutedText = true;
  }
 
}
