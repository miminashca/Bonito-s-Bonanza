int numberOfCombinations = 31;
ArrayList<String> replics = new ArrayList<String>(numberOfCombinations);
boolean fillReplicsExecuted = false; 

// Added missing replies
void fillReplics() {
  for (int i = 0; i<numberOfCombinations; i++) {
    replics.add(new String());
  }

//0)
  String[] array_0={"Anything is fine with me!",
        "Surprise me!",
        "I like everything!",
        "Give me your favorite!"};
  int r0 = int(random(array_0.length));
  String anything = array_0[r0];
  replics.set(0, anything);
//1)
  String[] array_1={"A roll, please!",
        "I would like a roll!",
        "I'd like a roll!",
        "Give me a roll!",
        "Can you give me a roll?",
        "Do you have a roll?",
        "Just a roll for me!",
        "I deserve a roll!",
        "A roll sounds nice!"};
  int r1 = int(random(array_1.length));
  String roll = array_1[r1];
  replics.set(1, roll);
//2)
  String[] array_2={"A nigiri, please!",
        "I would like a nigiri!",
        "I'd like a nigiri!",
        "Give me a nigiri!",
        "Can you give me a nigiri?",
        "Do you have a nigiri?",
        "Just a nigiri for me!",
        "I deserve a nigiri!",
        "A nigiri sounds nice!"};
  int r2 = int(random(array_2.length));
  String nigiri = array_2[r2];
  replics.set(2, nigiri);
//3)
  String[] array_3={"Something with only fish, please!",
        "I would like something with only fish!",
        "I'd like something with only fish!",
        "Give me something with only fish!",
        "Can you give me something with only fish?",
        "Do you have something with only fish?",
        "Just something with only fish for me!",
        "I deserve something with only fish!",
        "Something with only fish sounds nice!",
        "I only like fish!"};
  int r3 = int(random(array_3.length));
  String noVegetables = array_3[r3];
  replics.set(3, noVegetables);
//4)
  String[] array_4={"Something vegetarian, please!",
        "I would like something vegetarian!",
        "I'd like something vegetarian!",
        "Give me something vegetarian!",
        "Can you give me something vegetarian?",
        "Do you have something vegetarian?",
        "Just something vegetarian for me!",
        "I deserve something vegetarian!",
        "Something vegetarian sounds nice!",
        "Something with only vegetables, please!",
        "I would like something with only vegetables!",
        "I'd like something with only vegetables!",
        "Give me something with only vegetables!",
        "Can you give me something with only vegetables?",
        "Do you have something with only vegetables?",
        "Just something with only vegetables for me!",
        "I deserve something with only vegetables!",
        "Something with only vegetables sounds nice!",
        "I only like vegetables!"};
  int r4 = int(random(array_4.length));
  String noFish = array_4[r4];
  replics.set(4, noFish);
//5)
  String[] array_5={"Something with fish and vegetables, please!",
        "I would like something with fish and vegetables!",
        "I'd like something with fish and vegetables!",
        "Give me something with fish and vegetables!",
        "Can you give me something with fish and vegetables?",
        "Do you have something with fish and vegetables?",
        "Just something with fish and vegetables for me!",
        "I deserve something with fish and vegetables!",
        "Something with fish and vegetables sounds nice!"};
  int r5 = int(random(array_5.length));
  String vegFish = array_5[r5];
  replics.set(5, vegFish);
//6)
  String[] array_6={"Something with fish, please!",
        "I would like something with fish!",
        "I'd like something with fish!",
        "Give me something with fish!",
        "Can you give me something with fish?",
        "Do you have something with fish?",
        "Just something with fish for me!",
        "I deserve something with fish!",
        "Something with fish sounds nice!",
        "Fish sushi, please!",
        "I would like fish sushi!",
        "I'd like fish sushi!",
        "Give me fish sushi!",
        "Can you give me fish sushi?",
        "Do you have fish sushi?",
        "Just fish sushi for me!",
        "I deserve fish sushi!",
        "Fish sushi sounds nice!"};
  int r6 = int(random(array_6.length));
  String fish = array_6[r6];
  replics.set(6, fish);
//7)
  String[] array_7={"Something with vegetables, please!",
        "I would like something with vegetables!",
        "I'd like something with vegetables!",
        "Give me something with vegetables!",
        "Can you give me something with vegetables?",
        "Do you have something with vegetables?",
        "Just something with vegetables for me!",
        "I deserve something with vegetables!",
        "Something with vegetables sounds nice!",
        "Vegetable sushi, please!",
        "I would like vegetable sushi!",
        "I'd like vegetable sushi!",
        "Give me vegetable sushi!",
        "Can you give me vegetable sushi?",
        "Do you have vegetable sushi?",
        "Just vegetable sushi for me!",
        "I deserve vegetable sushi!",
        "Vegetable sushi sounds nice!"};
  int r7 = int(random(array_7.length));
  String vegetables = array_7[r7];
  replics.set(7, vegetables);
//8)
  String[] array_8={"Something with salmon, please!",
        "I would like something with salmon!",
        "I'd like something with salmon!",
        "Give me something with salmon!",
        "Can you give me something with salmon?",
        "Do you have something with salmon?",
        "Just something with salmon for me!",
        "I deserve something with salmon!",
        "Something with salmon sounds nice!",
        "Salmon sushi, please!",
        "I would like salmon sushi!",
        "I'd like salmon sushi!",
        "Give me salmon sushi!",
        "Can you give me salmon sushi?",
        "Do you have salmon sushi?",
        "Just salmon sushi for me!",
        "I deserve salmon sushi!",
        "Salmon sushi sounds nice!"};
  int r8 = int(random(array_8.length));
  String salmon = array_8[r8];
  replics.set(8, salmon);
//9)
  String[] array_9={"Something with tuna, please!",
        "I would like something with tuna!",
        "I'd like something with tuna!",
        "Give me something with tuna!",
        "Can you give me something with tuna?",
        "Do you have something with tuna?",
        "Just something with tuna for me!",
        "I deserve something with tuna!",
        "Something with tuna sounds nice!",
        "Tuna sushi, please!",
        "I would like tuna sushi!",
        "I'd like tuna sushi!",
        "Give me tuna sushi!",
        "Can you give me tuna sushi?",
        "Do you have tuna sushi?",
        "Just tuna sushi for me!",
        "I deserve tuna sushi!",
        "Tuna sushi sounds nice!"};
  int r9 = int(random(array_9.length));
  String tuna = array_9[r9];
  replics.set(9, tuna);
//10)
  String[] array_10={"Something with avocado, please!",
        "I would like something with avocado!",
        "I'd like something with avocado!",
        "Give me something with avocado!",
        "Can you give me something with avocado?",
        "Do you have something with avocado?",
        "Just something with avocado for me!",
        "I deserve something with avocado!",
        "Something with avocado sounds nice!",
        "Avocado sushi, please!",
        "I would like avocado sushi!",
        "I'd like avocado sushi!",
        "Give me avocado sushi!",
        "Can you give me avocado sushi?",
        "Do you have avocado sushi?",
        "Just avocado sushi for me!",
        "I deserve avocado sushi!",
        "Avocado sushi sounds nice!"};
  int r10 = int(random(array_10.length));
  String avokado = array_10[r10];
  replics.set(10, avokado);
//11)
  String[] array_11={"Something with carrot, please!",
        "I would like something with carrot!",
        "I'd like something with carrot!",
        "Give me something with carrot!",
        "Can you give me something with carrot?",
        "Do you have something with carrot?",
        "Just something with carrot for me!",
        "I deserve something with carrot!",
        "Something with carrot sounds nice!",
        "Carrot sushi, please!",
        "I would like carrot sushi!",
        "I'd like carrot sushi!",
        "Give me carrot sushi!",
        "Can you give me carrot sushi?",
        "Do you have carrot sushi?",
        "Just carrot sushi for me!",
        "I deserve carrot sushi!",
        "Carrot sushi sounds nice!"};
  int r11 = int(random(array_11.length));
  String carrot = array_11[r11];
  replics.set(11, carrot);
//12)
  String[] array_12={"A fish roll, please!",
        "I would like a fish roll!",
        "I'd like a fish roll!",
        "Give me a fish roll!",
        "Can you give me a fish roll?",
        "Do you have a fish roll?",
        "Just a fish roll for me!",
        "I deserve a fish roll!",
        "A fish roll sounds nice!"};
  int r12 = int(random(array_12.length));
  String fishRoll = array_12[r12];
  replics.set(12, fishRoll);
//13)
  String[] array_13={"A vegetable roll, please!",
        "I would like a vegetable roll!",
        "I'd like a vegetable roll!",
        "Give me a vegetable roll!",
        "Can you give me a vegetable roll?",
        "Do you have a vegetable roll?",
        "Just a vegetable roll for me!",
        "I deserve a vegetable roll!",
        "A vegetable roll sounds nice!"};
  int r13 = int(random(array_13.length));
  String vegetableRoll = array_13[r13];
  replics.set(13, vegetableRoll);
//14)
  String[] array_14={"A roll with fish and vegetables, please!",
        "I would like a roll with fish and vegetables!",
        "I'd like a roll with fish and vegetables!",
        "Give me a roll with fish and vegetables!",
        "Can you give me a roll with fish and vegetables?",
        "Do you have a roll with fish and vegetables?",
        "Just a roll with fish and vegetables for me!",
        "I deserve a roll with fish and vegetables!",
        "A roll with fish and vegetables sounds nice!",
        "A roll with vegetables and fish, please!",
        "I would like a roll with vegetables and fish!",
        "I'd like a roll with vegetables and fish!",
        "Give me a roll with vegetables and fish!",
        "Can you give me a roll with vegetables and fish?",
        "Do you have a roll with vegetables and fish?",
        "Just a roll with vegetables and fish for me!",
        "I deserve a roll with vegetables and fish!",
        "A roll with vegetables and fish sounds nice!",
        "A fish and vegetable roll, please!",
        "I would like a fish and vegetable roll!",
        "I'd like a fish and vegetable roll!",
        "Give me a fish and vegetable roll!",
        "Can you give me a fish and vegetable roll?",
        "Do you have a fish and vegetable roll?",
        "Just a fish and vegetable roll for me!",
        "I deserve a fish and vegetable roll!",
        "A fish and vegetable roll sounds nice!",
        "A vegetable and fish roll, please!",
        "I would like a vegetable and fish roll!",
        "I'd like a vegetable and fish roll!",
        "Give me a vegetable and fish roll!",
        "Can you give me a vegetable and fish roll?",
        "Do you have a vegetable and fish roll?",
        "Just a vegetable and fish roll for me!",
        "I deserve a vegetable and fish roll!",
        "A vegetable and fish roll sounds nice!",
        "I only like rolls with fish and vegetables!",
        "I only like rolls with vegetables and fish!",
        "I only like fish and vegetable rolls!",
        "I only like vegetable and fish rolls!"};
  int r14 = int(random(array_14.length));
  String fishVegetableRoll = array_14[r14];
  replics.set(14, fishVegetableRoll);
//15)
  String[] array_15={"A salmon roll, please!",
        "I would like a salmon roll!",
        "I'd like a salmon roll!",
        "Give me a salmon roll!",
        "Can you give me a salmon roll?",
        "Do you have a salmon roll?",
        "Just a salmon roll for me!",
        "I deserve a salmon roll!",
        "A salmon roll sounds nice!"};
  int r15 = int(random(array_15.length));
  String salmonRoll = array_15[r15];
  replics.set(15, salmonRoll);
//16)
  String[] array_16={"A tuna roll, please!",
        "I would like a tuna roll!",
        "I'd like a tuna roll!",
        "Give me a tuna roll!",
        "Can you give me a tuna roll?",
        "Do you have a tuna roll?",
        "Just a tuna roll for me!",
        "I deserve a tuna roll!",
        "A tuna roll sounds nice!"};
  int r16 = int(random(array_16.length));
  String tunaRoll = array_16[r16];
  replics.set(16, tunaRoll);
//17)
  String[] array_17={"An avocado roll, please!",
        "I would like an avocado roll!",
        "I'd like an avocado roll!",
        "Give me an avocado roll!",
        "Can you give me an avocado roll?",
        "Do you have an avocado roll?",
        "Just an avocado roll for me!",
        "I deserve an avocado roll!",
        "An avocado roll sounds nice!"};
  int r17 = int(random(array_17.length));
  String avokadoRoll = array_17[r17];
  replics.set(17, avokadoRoll);
//18)
  String[] array_18={"A carrot roll, please!",
        "I would like a carrot roll!",
        "I'd like a carrot roll!",
        "Give me a carrot roll!",
        "Can you give me a carrot roll?",
        "Do you have a carrot roll?",
        "Just a carrot roll for me!",
        "I deserve a carrot roll!",
        "A carrot roll sounds nice!"};
  int r18 = int(random(array_18.length));
  String carrotRoll = array_18[r18];
  replics.set(18, carrotRoll);
//19)
  String[] array_19={"A roll with salmon and avocado, please!",
        "I would like a roll with salmon and avocado!",
        "I'd like a roll with salmon and avocado!",
        "Give me a roll with salmon and avocado!",
        "Can you give me a roll with salmon and avocado?",
        "Do you have a roll with salmon and avocado?",
        "Just a roll with salmon and avocado for me!",
        "I deserve a roll with salmon and avocado!",
        "A roll with salmon and avocado sounds nice!",
        "A roll with avocado and salmon, please!",
        "I would like a roll with avocado and salmon!",
        "I'd like a roll with avocado and salmon!",
        "Give me a roll with avocado and salmon!",
        "Can you give me a roll with avocado and salmon?",
        "Do you have a roll with avocado and salmon?",
        "Just a roll with avocado and salmon for me!",
        "I deserve a roll with avocado and salmon!",
        "A roll with avocado and salmon sounds nice!",
        "A salmon and avocado roll, please!",
        "I would like a salmon and avocado roll!",
        "I'd like a salmon and avocado roll!",
        "Give me a salmon and avocado roll!",
        "Can you give me a salmon and avocado roll?",
        "Do you have a salmon and avocado roll?",
        "Just a salmon and avocado roll for me!",
        "I deserve a salmon and avocado roll!",
        "A salmon and avocado roll sounds nice!",
        "An avocado and salmon roll, please!",
        "I would like an avocado and salmon roll!",
        "I'd like an avocado and salmon roll!",
        "Give me an avocado and salmon roll!",
        "Can you give me an avocado and salmon roll?",
        "Do you have an avocado and salmon roll?",
        "Just an avocado and salmon roll for me!",
        "I deserve an avocado and salmon roll!",
        "An avocado and salmon roll sounds nice!",
        "I only like rolls with salmon and avocado!",
        "I only like rolls with avocado and salmon!",
        "I only like salmon and avocado rolls!",
        "I only like avocado and salmon rolls!"};
  int r19 = int(random(array_19.length));
  String salmonAvokadoRoll = array_19[r19];
  replics.set(19, salmonAvokadoRoll);
//20)
  String[] array_20={"A roll with salmon and carrot, please!",
        "I would like a roll with salmon and carrot!",
        "I'd like a roll with salmon and carrot!",
        "Give me a roll with salmon and carrot!",
        "Can you give me a roll with salmon and carrot?",
        "Do you have a roll with salmon and carrot?",
        "Just a roll with salmon and carrot for me!",
        "I deserve a roll with salmon and carrot!",
        "A roll with salmon and carrot sounds nice!",
        "A roll with carrot and salmon, please!",
        "I would like a roll with carrot and salmon!",
        "I'd like a roll with carrot and salmon!",
        "Give me a roll with carrot and salmon!",
        "Can you give me a roll with carrot and salmon?",
        "Do you have a roll with carrot and salmon?",
        "Just a roll with carrot and salmon for me!",
        "I deserve a roll with carrot and salmon!",
        "A roll with carrot and salmon sounds nice!",
        "A salmon and carrot roll, please!",
        "I would like a salmon and carrot roll!",
        "I'd like a salmon and carrot roll!",
        "Give me a salmon and carrot roll!",
        "Can you give me a salmon and carrot roll?",
        "Do you have a salmon and carrot roll?",
        "Just a salmon and carrot roll for me!",
        "I deserve a salmon and carrot roll!",
        "A salmon and carrot roll sounds nice!",
        "A carrot and salmon roll, please!",
        "I would like a carrot and salmon roll!",
        "I'd like a carrot and salmon roll!",
        "Give me a carrot and salmon roll!",
        "Can you give me a carrot and salmon roll?",
        "Do you have a carrot and salmon roll?",
        "Just a carrot and salmon roll for me!",
        "I deserve a carrot and salmon roll!",
        "A carrot and salmon roll sounds nice!",
        "I only like rolls with salmon and carrot!",
        "I only like rolls with carrot and salmon!",
        "I only like salmon and carrot rolls!",
        "I only like carrot and salmon rolls!"};
  int r20 = int(random(array_20.length));
  String salmonCarrotRoll = array_20[r20];
  replics.set(20, salmonCarrotRoll);
//21)
  String[] array_21={"A roll with tuna and avocado, please!",
        "I would like a roll with tuna and avocado!",
        "I'd like a roll with tuna and avocado!",
        "Give me a roll with tuna and avocado!",
        "Can you give me a roll with tuna and avocado?",
        "Do you have a roll with tuna and avocado?",
        "Just a roll with tuna and avocado for me!",
        "I deserve a roll with tuna and avocado!",
        "A roll with tuna and avocado sounds nice!",
        "A roll with avocado and tuna, please!",
        "I would like a roll with avocado and tuna!",
        "I'd like a roll with avocado and tuna!",
        "Give me a roll with avocado and tuna!",
        "Can you give me a roll with avocado and tuna?",
        "Do you have a roll with avocado and tuna?",
        "Just a roll with avocado and tuna for me!",
        "I deserve a roll with avocado and tuna!",
        "A roll with avocado and tuna sounds nice!",
        "A tuna and avocado roll, please!",
        "I would like a tuna and avocado roll!",
        "I'd like a tuna and avocado roll!",
        "Give me a tuna and avocado roll!",
        "Can you give me a tuna and avocado roll?",
        "Do you have a tuna and avocado roll?",
        "Just a tuna and avocado roll for me!",
        "I deserve a tuna and avocado roll!",
        "A tuna and avocado roll sounds nice!",
        "An avocado and tuna roll, please!",
        "I would like an avocado and tuna roll!",
        "I'd like an avocado and tuna roll!",
        "Give me an avocado and tuna roll!",
        "Can you give me an avocado and tuna roll?",
        "Do you have an avocado and tuna roll?",
        "Just an avocado and tuna roll for me!",
        "I deserve an avocado and tuna roll!",
        "An avocado and tuna roll sounds nice!",
        "I only like rolls with tuna and avocado!",
        "I only like rolls with avocado and tuna!",
        "I only like tuna and avocado rolls!",
        "I only like avocado and tuna rolls!"};
  int r21 = int(random(array_21.length));
  String tunaAvokadoRoll = array_21[r21];
  replics.set(21, tunaAvokadoRoll);
//22)
  String[] array_22={"A roll with tuna and carrot, please!",
        "I would like a roll with tuna and carrot!",
        "I'd like a roll with tuna and carrot!",
        "Give me a roll with tuna and carrot!",
        "Can you give me a roll with tuna and carrot?",
        "Do you have a roll with tuna and carrot?",
        "Just a roll with tuna and carrot for me!",
        "I deserve a roll with tuna and carrot!",
        "A roll with tuna and carrot sounds nice!",
        "A roll with carrot and tuna, please!",
        "I would like a roll with carrot and tuna!",
        "I'd like a roll with carrot and tuna!",
        "Give me a roll with carrot and tuna!",
        "Can you give me a roll with carrot and tuna?",
        "Do you have a roll with carrot and tuna?",
        "Just a roll with carrot and tuna for me!",
        "I deserve a roll with carrot and tuna!",
        "A roll with carrot and tuna sounds nice!",
        "A tuna and carrot roll, please!",
        "I would like a tuna and carrot roll!",
        "I'd like a tuna and carrot roll!",
        "Give me a tuna and carrot roll!",
        "Can you give me a tuna and carrot roll?",
        "Do you have a tuna and carrot roll?",
        "Just a tuna and carrot roll for me!",
        "I deserve a tuna and carrot roll!",
        "A tuna and carrot roll sounds nice!",
        "A carrot and tuna roll, please!",
        "I would like a carrot and tuna roll!",
        "I'd like a carrot and tuna roll!",
        "Give me a carrot and tuna roll!",
        "Can you give me a carrot and tuna roll?",
        "Do you have a carrot and tuna roll?",
        "Just a carrot and tuna roll for me!",
        "I deserve a carrot and tuna roll!",
        "A carrot and tuna roll sounds nice!",
        "I only like rolls with tuna and carrot!",
        "I only like rolls with carrot and tuna!",
        "I only like tuna and carrot rolls!",
        "I only like carrot and tuna rolls!"};
  int r22 = int(random(array_22.length));
  String tunaCarrotRoll = array_22[r22];
  replics.set(22, tunaCarrotRoll);
//23)
  String[] array_23={"A salmon nigiri, please!",
        "I would like a salmon nigiri!",
        "I'd like a salmon nigiri!",
        "Give me a salmon nigiri!",
        "Can you give me a salmon nigiri?",
        "Do you have a salmon nigiri?",
        "Just a salmon nigiri for me!",
        "I deserve a salmon nigiri!",
        "A salmon nigiri sounds nice!"};
  int r23 = int(random(array_23.length));
  String salmonNigiri = array_23[r23];
  replics.set(23, salmonNigiri);
//24)
  String[] array_24={"A tuna nigiri, please!",
        "I would like a tuna nigiri!",
        "I'd like a tuna nigiri!",
        "Give me a tuna nigiri!",
        "Can you give me a tuna nigiri?",
        "Do you have a tuna nigiri?",
        "Just a tuna nigiri for me!",
        "I deserve a tuna nigiri!",
        "A tuna nigiri sounds nice!"};
  int r24 = int(random(array_24.length));
  String tunaNigiri = array_24[r24];
  replics.set(24, tunaNigiri);
//25)
  String[] array_25={"A roll with salmon and vegetables, please!",
        "I would like a roll with salmon and vegetables!",
        "I'd like a roll with salmon and vegetables!",
        "Give me a roll with salmon and vegetables!",
        "Can you give me a roll with salmon and vegetables?",
        "Do you have a roll with salmon and vegetables?",
        "Just a roll with salmon and vegetables for me!",
        "I deserve a roll with salmon and vegetables!",
        "A roll with salmon and vegetables sounds nice!",
        "A roll with vegetables and salmon, please!",
        "I would like a roll with vegetables and salmon!",
        "I'd like a roll with vegetables and salmon!",
        "Give me a roll with vegetables and salmon!",
        "Can you give me a roll with vegetables and salmon?",
        "Do you have a roll with vegetables and salmon?",
        "Just a roll with vegetables and salmon for me!",
        "I deserve a roll with vegetables and salmon!",
        "A roll with vegetables and salmon sounds nice!",
        "A salmon and vegetable roll, please!",
        "I would like a salmon and vegetable roll!",
        "I'd like a salmon and vegetable roll!",
        "Give me a salmon and vegetable roll!",
        "Can you give me a salmon and vegetable roll?",
        "Do you have a salmon and vegetable roll?",
        "Just a salmon and vegetable roll for me!",
        "I deserve a salmon and vegetable roll!",
        "A salmon and vegetable roll sounds nice!",
        "A vegetable and salmon roll, please!",
        "I would like a vegetable and salmon roll!",
        "I'd like a vegetable and salmon roll!",
        "Give me a vegetable and salmon roll!",
        "Can you give me a vegetable and salmon roll?",
        "Do you have a vegetable and salmon roll?",
        "Just a vegetable and salmon roll for me!",
        "I deserve a vegetable and salmon roll!",
        "A vegetable and salmon roll sounds nice!",
        "I only like rolls with salmon and vegetables!",
        "I only like rolls with vegetables and salmon!",
        "I only like salmon and vegetable rolls!",
        "I only like vegetable and salmon rolls!"};
  int r25 = int(random(array_25.length));
  String salmonVegRoll = array_25[r25];
  replics.set(25, salmonVegRoll);
//26)
  String[] array_26={"A roll with tuna and vegetables, please!",
        "I would like a roll with tuna and vegetables!",
        "I'd like a roll with tuna and vegetables!",
        "Give me a roll with tuna and vegetables!",
        "Can you give me a roll with tuna and vegetables?",
        "Do you have a roll with tuna and vegetables?",
        "Just a roll with tuna and vegetables for me!",
        "I deserve a roll with tuna and vegetables!",
        "A roll with tuna and vegetables sounds nice!",
        "A roll with vegetables and tuna, please!",
        "I would like a roll with vegetables and tuna!",
        "I'd like a roll with vegetables and tuna!",
        "Give me a roll with vegetables and tuna!",
        "Can you give me a roll with vegetables and tuna?",
        "Do you have a roll with vegetables and tuna?",
        "Just a roll with vegetables and tuna for me!",
        "I deserve a roll with vegetables and tuna!",
        "A roll with vegetables and tuna sounds nice!",
        "A tuna and vegetable roll, please!",
        "I would like a tuna and vegetable roll!",
        "I'd like a tuna and vegetable roll!",
        "Give me a tuna and vegetable roll!",
        "Can you give me a tuna and vegetable roll?",
        "Do you have a tuna and vegetable roll?",
        "Just a tuna and vegetable roll for me!",
        "I deserve a tuna and vegetable roll!",
        "A tuna and vegetable roll sounds nice!",
        "A vegetable and tuna roll, please!",
        "I would like a vegetable and tuna roll!",
        "I'd like a vegetable and tuna roll!",
        "Give me a vegetable and tuna roll!",
        "Can you give me a vegetable and tuna roll?",
        "Do you have a vegetable and tuna roll?",
        "Just a vegetable and tuna roll for me!",
        "I deserve a vegetable and tuna roll!",
        "A vegetable and tuna roll sounds nice!",
        "I only like rolls with tuna and vegetables!",
        "I only like rolls with vegetables and tuna!",
        "I only like tuna and vegetable rolls!",
        "I only like vegetable and tuna rolls!"};
  int r26 = int(random(array_26.length));
  String tunaVegRoll = array_26[r26];
  replics.set(26, tunaVegRoll);
//27)
  String[] array_27={"A roll with fish and avocado, please!",
        "I would like a roll with fish and avocado!",
        "I'd like a roll with fish and avocado!",
        "Give me a roll with fish and avocado!",
        "Can you give me a roll with fish and avocado?",
        "Do you have a roll with fish and avocado?",
        "Just a roll with fish and avocado for me!",
        "I deserve a roll with fish and avocado!",
        "A roll with fish and avocado sounds nice!",
        "A roll with avocado and fish, please!",
        "I would like a roll with avocado and fish!",
        "I'd like a roll with avocado and fish!",
        "Give me a roll with avocado and fish!",
        "Can you give me a roll with avocado and fish?",
        "Do you have a roll with avocado and fish?",
        "Just a roll with avocado and fish for me!",
        "I deserve a roll with avocado and fish!",
        "A roll with avocado and fish sounds nice!",
        "A fish and avocado roll, please!",
        "I would like a fish and avocado roll!",
        "I'd like a fish and avocado roll!",
        "Give me a fish and avocado roll!",
        "Can you give me a fish and avocado roll?",
        "Do you have a fish and avocado roll?",
        "Just a fish and avocado roll for me!",
        "I deserve a fish and avocado roll!",
        "A fish and avocado roll sounds nice!",
        "An avocado and fish roll, please!",
        "I would like an avocado and fish roll!",
        "I'd like an avocado and fish roll!",
        "Give me an avocado and fish roll!",
        "Can you give me an avocado and fish roll?",
        "Do you have an avocado and fish roll?",
        "Just an avocado and fish roll for me!",
        "I deserve an avocado and fish roll!",
        "An avocado and fish roll sounds nice!",
        "I only like rolls with fish and avocado!",
        "I only like rolls with avocado and fish!",
        "I only like fish and avocado rolls!",
        "I only like avocado and fish rolls!"};
  int r27 = int(random(array_27.length));
  String fishAvokadoRoll = array_27[r27];
  replics.set(27, fishAvokadoRoll);
//28)
  String[] array_28={"A roll with fish and carrot, please!",
        "I would like a roll with fish and carrot!",
        "I'd like a roll with fish and carrot!",
        "Give me a roll with fish and carrot!",
        "Can you give me a roll with fish and carrot?",
        "Do you have a roll with fish and carrot?",
        "Just a roll with fish and carrot for me!",
        "I deserve a roll with fish and carrot!",
        "A roll with fish and carrot sounds nice!",
        "A roll with carrot and fish, please!",
        "I would like a roll with carrot and fish!",
        "I'd like a roll with carrot and fish!",
        "Give me a roll with carrot and fish!",
        "Can you give me a roll with carrot and fish?",
        "Do you have a roll with carrot and fish?",
        "Just a roll with carrot and fish for me!",
        "I deserve a roll with carrot and fish!",
        "A roll with carrot and fish sounds nice!",
        "A fish and carrot roll, please!",
        "I would like a fish and carrot roll!",
        "I'd like a fish and carrot roll!",
        "Give me a fish and carrot roll!",
        "Can you give me a fish and carrot roll?",
        "Do you have a fish and carrot roll?",
        "Just a fish and carrot roll for me!",
        "I deserve a fish and carrot roll!",
        "A fish and carrot roll sounds nice!",
        "A carrot and fish roll, please!",
        "I would like a carrot and fish roll!",
        "I'd like a carrot and fish roll!",
        "Give me a carrot and fish roll!",
        "Can you give me a carrot and fish roll?",
        "Do you have a carrot and fish roll?",
        "Just a carrot and fish roll for me!",
        "I deserve a carrot and fish roll!",
        "A carrot and fish roll sounds nice!",
        "I only like rolls with fish and carrot!",
        "I only like rolls with carrot and fish!",
        "I only like fish and carrot rolls!",
        "I only like carrot and fish rolls!"};
  int r28 = int(random(array_28.length));
  String fishCarrotRoll = array_28[r28];
  replics.set(28, fishCarrotRoll);
//29)
  String[] array_29={"I only like salmon!",
        "Something with just salmon, please!",
        "I would like something with just salmon!",
        "I'd like something with just salmon!",
        "Give me something with just salmon!",
        "Can you give me something with just salmon?",
        "Do you have something with just salmon?",
        "Just something with just salmon for me!",
        "I deserve something with just salmon!",
        "Something with just salmon sounds nice!"};
  int r29 = int(random(array_29.length));
  String onlySalmon = array_29[r29];
  replics.set(29, onlySalmon);
//30
  String[] array_30={"I only like tuna!",
        "Something with just tuna, please!",
        "I would like something with just tuna!",
        "I'd like something with just tuna!",
        "Give me something with just tuna!",
        "Can you give me something with just tuna?",
        "Do you have something with just tuna?",
        "Just something with just tuna for me!",
        "I deserve something with just tuna!",
        "Something with just tuna sounds nice!"};
  int r30 = int(random(array_30.length));
  String onlyTuna = array_30[r30];
  replics.set(30, onlyTuna);
}
