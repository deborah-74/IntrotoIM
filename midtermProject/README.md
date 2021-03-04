# MIDTERM PROJECT - Snake Game

For my midterm project, I decided to create a classic snake game, which is essentially a small snake (square) that moves around the screen to try and eat apples in order to gain points as well as get longer. The game ends once the snake collides with itself. In classic snake games, the snake also dies when it hits the wall, but I decided to let the snake for my game be able to go through walls because it gives the user more freedom. To add more difficulty though, I decided to incorporate bombs into my game and have the snake lose if it collides with the bomb. I incorporated sounds and images into my game to make it more interactive and visually appealing.

## Instructions

- Use up, down, left and right arrow keys to move the snake around
- Eat the apples to get longer, and increase your score
- DO NOT eat bombs, however tasty they may look
- DO NOT collide with yourself
- You can go through the walls
- Most importantly, have fun!

## Process

- Firstly, I created two array lists to store the x position and y position of the snake head
- Next, I created integer variables to store the blocksize (40 pixels), direction, width and height of window in 'blocksize' units. I measured the width and height in units of blocksize so that the snake will move throughout the screen in blocks, and not pixels. Also, it made it much easier to align the apples with the snakes later on in the code
- I created two integer arrays to store the possible directions that the snake could move in: 0, 0, 1, -1
- After, I had to get the snake moving! Firstly, I added an integer value (in blocksize units) to both the xPosition array list and the yPosition array list. Then, I created a for loop that updated the position of the snake and drew a square at the new position, while erasing the squares at the previous location. This is very complex to explain in words, so please forgive me
- I created classes to store the apples and the bombs
- I created functions that would check if the snake had eaten the apple, the bomb, or collided with itself. There was also a wall function to allow the snake to pass through the wall, and a keyPressed function which controlled the direction of the snake
- Within draw, all the sounds and pictures were loaded including the background image. The game continued as long as the snake hadn't lost, and if it did a 'game over' screen would be displayed. At the start of the game, there would be instructions displayed also

## Problems I faced

This is going to be a long section. Creating this game was extremely difficult, but definitely so rewarding.

### Wrong logic

When I started off coding this assignment, I had a very simplified idea of what the code might look like. In my mind, it would just be a snake getting longer each time it collided with an apple object. Easy peasy right? Well, I was absolutely wrong! But it took me a whole week to figure this out. My logic was that I would create a rectangle with a width and a length. The length would get longer each time the snake 'ate' an apple. I progressed quite far into the code, and I had created an apple class, a function to change the direction of the snake and a function to check if the snake had eaten the apple, which would then make the length of the snake longer. When trying the game out, the snake did get longer, but
