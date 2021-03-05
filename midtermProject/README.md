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

<img src= "https://github.com/deborah-74/IntrotoIM/blob/main/midtermProject/Screenshot%202021-03-04%20at%2023.45.30.png" width="1000">

- After, I had to get the snake moving! Firstly, I added an integer value (in blocksize units) to both the xPosition array list and the yPosition array list. Then, I created a for loop that updated the position of the snake and drew a square at the new position, while erasing the squares at the previous location. This is very complex to explain in words, so please forgive me
- I created classes to store the apples and the bombs
- I created functions that would check if the snake had eaten the apple, the bomb, or collided with itself. There was also a wall function to allow the snake to pass through the wall, and a keyPressed function which controlled the direction of the snake
- Within draw, all the sounds and pictures were loaded including the background image. The game continued as long as the snake hadn't lost, and if it did a 'game over' screen would be displayed. At the start of the game, there would be instructions displayed also

<img src= "https://github.com/deborah-74/IntrotoIM/blob/main/midtermProject/Screenshot%202021-03-04%20at%2023.46.34.png" width="1000">

## Problems I faced

This is going to be a long section. Creating this game was extremely difficult, but definitely so rewarding.

### Wrong logic

When I started off coding this assignment, I had a very simplified idea of what the code might look like. In my mind, it would just be a snake getting longer each time it collided with an apple object. Easy peasy right? Well, I was absolutely wrong! But it took me a whole week to figure this out. My logic was that I would create a rectangle with a width and a length. The length would get longer each time the snake 'ate' an apple. I progressed quite far into the code, and I had created an apple class, a function to change the direction of the snake and a function to check if the snake had eaten the apple, which would then make the length of the snake longer. When trying the game out, the snake did get longer, but not in the way I wanted it to. The snake just looked like a rectangle moving across the screen, and after a week I realised that I would have to start again because I was using the wrong logic. This was hard to come to terms with because this was only a few days before the deadline. After doing research online, I found out that in order to achieve the intended movement of the snake, I would have to use array lists to store the x position and y position. After I finally understood how to do this, I got started with my new midterm.

### Start page and end page

I also struggled a lot trying to figure out how to transition from the start page to the game, and then to the ending page. Eventually, I just settled with moving the starting page images and text off screen whenever the user clicked the screen. I also struggled with trying to get the user to be able to restart the game, as my game kept on glitching.

## Outcome

<img src= "https://github.com/deborah-74/IntrotoIM/blob/main/midtermProject/Screenshot%202021-03-04%20at%2023.41.22.png" width="500">
<img src= "https://github.com/deborah-74/IntrotoIM/blob/main/midtermProject/Screenshot%202021-03-04%20at%2023.42.54.png" width="500">
<img src= "https://github.com/deborah-74/IntrotoIM/blob/main/midtermProject/Screenshot%202021-03-04%20at%2023.43.32.png" width="500">

## Things I learnt

- Since Array Lists were the backbone of my snake game, I got much practice learning how to use it and now I understood it much more despite it being quite a hard concept to grasp at first
- I used boolean variables throughout my game, and also functions that returned boolean values, and now they are my favourite type of functions!
- I learnt a lot more about how to order my lines of code, because several of the problems I faced were due to me putting things in the wrong order
- I have always found using the % in code, but because I needed to use it in my code, I got a lot of practice using it and now I understand how to use it

## How I would improve the game

In order to improve my snake game, I would introduce more fruits, and perhaps make the snake change colour depending on whatever fruit was eaten. Each fruit would have a different amount of points. I would also introduce a 'special fruit', that whenever eaten, would give the snake invincibility and super speed for a small amount of time. This would make the game much more fun! I would make the game get more difficult the longer the snake became, like displaying bombs at a higher frequency and for longer. I would also make a poisonous snake that would decrease the score if eaten, and perhaps lock the walls for an amount of time, so that the snake would no longer be able to go through.

## Conclusion

Overall, I am very proud of how my midterm project turned out. This was definitely the most difficult assingment I have had so far. But I learnt a lot and now I am confident that I can make more complex games because of all the skills I gained while completing this midterm.
