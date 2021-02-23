# Midterm Project - Snake

For my midterm project, I am creating a typical 'snake' game which involves a snake that eats apples that appear randomly on the screen, and grows longer with each apple eaten. I tried to create this game for one of my previous assignments, but found it too difficult. But now that I have learnt more about Processing, I believe I will be able to successfully create this game.

## February 18

Today, I want to focus on getting the snake to move around the screen

### What I achieved

- Firstly, I created a Snake class and initialised the snake's speed
- Then, I created a function called 'drawSnake' that would draw a small square, which is the initial snake
- Next, I created four functions called 'moveUp', 'moveDown', 'moveLeft', and 'moveRight', which would move the snake in different directions
- Finally, I used the 'keyPressed' function to move the snake according to whether the UP, DOWN, RIGHT and LEFT key was pressed. I made sure to use the 'background() function to ensure that the moving snake doesn't leave a trace behind

## February 19

Today, I want add the apple to the game and create a function that would calculate the distance between the snake and the apple

### What I achieved

- Firstly, I downloaded a png image of an apple and added it to my Processsing folder
- Then, I loaded the apple image onto the screen at a random position. I did this in the draw function so that the apple wouldn't disappear after one loop due to the background() function
- Next, I created a boolean function called 'snakeEat' to calculate the distance between the apple and the snake. I used the dist() function and used the positions of the snake and the apple as its dimensions. I then used an if statement to return the boolean value 'true' if the distance was equal to 0
- Finally, I tested whether this worked by printing the distance, and it did!

## February 20

Today, I want to get the apple to appear at a different random position on the screen once it touches the snake

### What I achieved

- Firstly, I created a class called 'Apple' to store the apple objects
- Then, I created a randomApple() function that would load the apple at a random position on the screen
- Next, I created a randomPosition() function that would change the position of the apple once the snake touched it
- In the draw function, I created an if statement that would call the function 'randomPosition' if the snakeEat function returned true

### Challenges

I struggled with trying to figure out how I would get the apple to appear at random positions each time. At first, I was going to create an array of apple objects that would store apples at different positions, but then after experimentation I realised that was not feasible because I don't know how many apple objects will be needed. Then I tried creating an Array List. Eventually, I thought of an easier method that would involve just one apple changing positions on the screen. I also noticed that it would take a lot of effort to make the distance bwteen the apple and the snake 0, so I used trial and error to find the most suitable distance, and settled at 50 pixels.

## February 21

Today, I want to focus on getting the snake to increase its length once it 'ate' an apple

### What I achieved

- Since the length of the snake was stored as a variable called snake-length, I figured I could create a function that would increase this value wheneer the snake 'ate' the apple
- So, I created a function called 'getLonger', that would increase the snake by 50 pixels
- I tested this out and it worked

### Challenges

I noticed that the orientation of the snake did not change based on its direction, and just looked like a vertical rectangle moving on the screen rather than a snake. This is when I realised I would have to use a different method

## February 22

Today, I want to find another method to increase the length of the snake

### What I achieved

- I decided that using an Array List to store squares that would make up the snake's body would be the best method to achieve what I want

### Challenges

I am still struggling to acheive what I want with the snake, but I am researching different methods I could use. I tried creating an array list of snake objects that would add a square to the snake once it 'ate' an apple. I tried to get each object to be 50 pixels behind the one in front of it. However, when I tested out the code, all it did was move the snake 50 pixels backwards. So, I know I have made a mistake somewhere. But I know that the Array List does add a snake object each time the snake 'eats' the apple because I used the print function to test it out and it works

## February 23

Today, I want to find out where the mistake is in my code, and use Array Lists to increase the length of the snake
