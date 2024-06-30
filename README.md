# Bonito’s Bonanza

## Description

**Bonito’s Bonanza** is a delightful cooking simulator where players serve cat-customers with Japanese food. This game was my first full-size group project, completed during the second term of my first year in college. I participated in this project as a Game Engineer, using the Processing language to bring the game to life. It was an excellent starting point for someone with no prior experience in programming.

### Background
In **Bonito’s Bonanza**, you play as a cat chef in a cozy Japanese-style kitchen. Your objective is to fulfill customer orders by assembling the correct ingredients to create dishes that satisfy their specific requests. The game is set against a timer, and your score is represented by the coins you earn for each successful order. By the time the timer stops, you either win or lose, depending on whether you have earned enough coins.

### Gameplay
The main gameplay involves:
- **Order Fulfillment**: Receive orders from cat-customers and determine the necessary ingredients to complete their dishes.
- **Ingredient Assembly**: Use the kitchen's counter, cooking counter, and tables to gather and combine ingredients.
- **Timer and Scoring**: Complete orders before the timer runs out to earn coins. The game ends when the timer stops, and your success depends on the number of coins collected.

### Development Contributions
In this project, I worked extensively on the order assembly logic and other essential functionalities. My responsibilities included:
- **Order Logic**: Developing natural and intuitive conditions for successful order assembly. For example, if a customer orders "something with fish, but no avocado," any dish containing fish and no avocado (or any vegetables) is considered successful.
- **Additional Features**: Implementing various specific and vague orders, creating approximately 70 different possible order variations with lists of valid and invalid combinations.

### Reception
**Bonito’s Bonanza** was well-received by my peers, and it was nominated as the most liked game among our class. The project was a valuable learning experience, showcasing excellent teamwork and my growth in programming and game development.

## Project Structure

### Root Directory
- **macos-x86_64/**: Contains the main project directory.
  - **.DS_Store**: macOS file for folder attributes (can be ignored or deleted).
  - **prototype.app/**: Application bundle for running the game on macOS.
  - **source/**: Contains the source code files for the game.
    - **fill_replics.pde**: Source file related to filling replicas in the game.
    - **Timer.pde**: Source file for the game timer.
    - **check_ready_dish.pde**: Logic for checking if a dish is ready.
    - **fading.pde**: Source file related to fading effects in the game.
    - **prototype.java**: Main Java file for the game.
    - **prototype.pde**: Main Processing file for the game.
    - **check_ingredients.pde**: Logic for checking the required ingredients.
    - **get_order_text.pde**: Logic for generating order text.
    - **Restart.pde**: Logic for restarting the game.
    - **reset.pde**: Logic for resetting the game.

## Getting Started

### Running the Game
1. Clone the repository or download the project files.
2. Open the `prototype.pde` file.
3. Done.
