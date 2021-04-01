# Arduino Puzzle - How fast are you?

## Instructions

- There are four LEDs: red, yellow, green and blue
- Each will blink one after the after, and the task is to press the the button which has a colour that corresponds to the lit LED. The player can choose whatever button they want to click
- If the player's attempt is unsuccessful, the blinking will continue
- If the player succeeds, the LEDs will indicate by blinking four times at the same time
- After 1 second, the game will restart

## Process

- Firstly, I declared global variables that will store the time since the start of the program
- Then, I declared all the pins modes
- Then I stored the switch states in variables
- I coded each LED to blink one after the other
- Finally, I created an if statement that would make all LED's blink four times if a button was clicked at the same time as its corresponding LED

## Challenges

Before deciding to use the millis() function, I used delay() and my condition for the if statement was that if the LED was HIGH and the button was also HIGH, the LEDs should all blink four times. But this did not work out so I had to do research on what other method I could use. I then decided to use millis() which was a hard concept to grasp at first. Throughout this assignment, I learnt that using the delay function is not the best method if you want the program to complete another task at the same time, because the delay function simply just pauses the program
