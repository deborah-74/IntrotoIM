# Space Maze

For my final project, I decided to create a game called Space Maze. Space Maze involves a robot vehicle that has to navigate its way out of a maze with the help of the player. Complimentary to the theme of the game, the player must answer 10 questions, which, if answered correctly, will give the user 5 seconds to move the space rover using the up, down, left and right keys on their keyboard. Once this time is up, the space rover will automatically come to a halt. If the space rover successfully makes it out of the maze, the player has won. If not, the player has failed the mission. The beauty of this game is that the difficulty is up to the user, as they can decide how complex they want their maze to be. All it takes is masking tape that the player sticks on the ground in whatever fashion they want!

## Instructions

Listen carefully. The Octavius II Rover has been stranded in an unknown land on Scitra Galactica and its engines are faulty. It appears to be a maze. You have been tasked with the most important task of the century: helping the Octavius II Rover navigate its way out of there. All you have to do is answer a series of questions that will restore energy back to the engines for a limited amount of time. Are you up for this challenge?

## Process

### Creating the Octavius II Rover

- Firstly, I had to build the engine, using a breadboard, an arduino uno board and a couple of wires. The schematic below details how this was set up
- Secondly, I had to create the body of the rover using cardboard, elastic bands and glue. This took about 5 tries before I successfully created the body. Most of the difficulty came from the vehicle not being able to balance because I only had two wheels when I started the project. But after becoming fed up of gravity ruining my attempts, I was able to receive two more wheels from my Professor, who so nicely let me keep them. I stuck the breadboard underneath the vehicle, while the arduino uno board remained at the top. The motors were secured to the bottom of the vehicle with glue, and everything else was kept in place with elastic bands

### Getting the rover to move

- After successfully creating the Octavius II Rover, the next step was to get it to move using Arduino
- I connected the wheels on the left to one pin and the ones on the right to another pin, to make sure that the rover will be able to rotate
- Finally, to make sure everything was connected properly, I alternated between moving the wheels forward, backwards, rotating left and rotating right by changing the pin values to HIGH and LOW accordingly

### Controlling movement through Processing

- After verifying that the rover could move properly, my next task was to use the up, down, left and right keys to do the job
- Firstly, I had to set up communication between Processing and Arduino using Serial.begin(9600) and while(Serial.available() > 0). I also initialised Serial port in processing
- Next, I used the keyPressed() function and if statements to write a specific character into the serial port depending on what key was pressed
- In Arduino, this character was stored into a variable called 'direction', which moved the rover forward, backwards, left or right depending on the key
- I noticed that the wheels kept moving even once I let go of the key, so I used the keyReleased() function to write a character to the port that if read in Arduino, would make the values of each pin the wheels were connected to LOW

### Creating each page

- At this point, I thought the appropriate step would be creating the questions and then determining whether the player's answers were right or wrong. I couldn't see a way of proceeding with this task without designing the layout of each page of the game, so I decided to start designing (but not spend too much time on this so I don't run out of time!)
- Google was a great resource for me throughout this project! I found a lovely background image on google that matched with the space theme perfectly, and used this for the background for each page in the quiz
- I also found a website called Space Font, where I could download png images of space-themed text of my choice. I used this throughout my project
- To start off with designing, I created a start page that consists of a png maze and a start button
![Alt Text](https://github.com/deborah-74/IntrotoIM/blob/main/Final%20Project/space.png)
- The next page was the instructions page, which had a brief paragraph explaining the mission, and then a continue button
- The pages following these were the pages for each question, with three options for the player to choose from. Each question was taken from the space section of a trivia website that I found on google
- After this, I created a 'correct answer' page and a 'wrong answer' page that would be displayed depending on if the player answered the question correctly. The correct answer page had a png image of a stopwatch, and the four direction keys of the keyboard to indicate to the user that they can now move the rover. The wrong answer page just displayed the wrong answer png text
- Finally, I created a final page that prompted the user to click anywhere on the screen to start over
![Alt Text](https://github.com/deborah-74/IntrotoIM/blob/main/Final%20Project/Screenshot%202021-05-05%20at%2023.32.09.png)

### Connecting the pages
- After creating each page and testing to see if they looked good visually, my next task was to connect each page to the next, which was the most difficult task throughout the whole project
- To achieve this, I created boolean variables for each page that would only display a page if true. Otherwise it would be false and that page would not be displayed
- Then, I used if statements in the mousePressed() function to make the correct page true if a specific part of the screen (where the correct answer button was positioned) was pressed and the wrong answer page true if the wrong option was pressed

![Alt Text](https://github.com/deborah-74/IntrotoIM/blob/main/Final%20Project/Screenshot%202021-05-05%20at%2023.31.29.png)

### Creating the countdown

- I wanted the correct answer and wrong answer pages to only be displayed for 5 seconds, and for the rover to only be able to move during this time
- I did research to find different methods that I would be able to create a countdown, but I did not understand any of them and implementing them was a huge failure, so I thought of an easier method: finding audio of a 5-second countdown and a buzzer and only displaying the pages while the audio was playing. This was also an amazing idea because the audio heightened the suspense and made the game more immersive

![Alt Text](https://github.com/deborah-74/IntrotoIM/blob/main/Final%20Project/Screenshot%202021-05-05%20at%2023.32.49.png)

### Adding the sounds

- The sounds were crucial to bringing my project together and making it a cohesive whole
- Firstly, I found background music on YouTube - I used the Interstellar soundtrack because it really does sound like space, even though I have no idea what space sounds like
- Then, I found a countdown noise that would heighten tension whenever an answer was correct
- Finally, I found a buzzer sound that would play whenever an answer was incorrect

### Finishing touches

- To finish off, I added a hover effect to each button using the rect() and noFill() functions to create that effect
- I also added a typewriter effect to the instructions text

## Challenges

I experienced so many challenges throughout this project, and it was very rewarding to overcome them.

1) Connecting the pages
This was by far the most difficult part of creating this project, because there were several errors that prevented the pages from showing up one after the other in the correct order after user input. Sometimes the next page would show for just a second before going back to the start page. Sometimes, the next page won't be displayed at all. Eventually, I fixed this problem using several boolean variables for the level, page and level state to ensure that the necessary page was displayed at the right time

2) Creating the countdown
This was one of the problems that I could not solve, but luckily I was able to find an easier solution using the isPlaying() function. I am so glad this idea came to my mind otherwise I would have spent much more time trying to figure out how to code a countdown. It ended up making more sense to use audio in the end because if I had a countdown displayed on the screen, it would be useless since during this time the player's attention would be solely focused on the rover and moving it. So,, using audio was much more practical and immersive

## What I enjoyed the most

I definitely enjoyed creating the rover and getting it to move the most throughout this project, especially because I found Arduino much more difficult than Processing in this class. It was really rewarding to finally get it right! Before taking this class, I would have never thought that I would be capable of creating something like this, so I am really proud of myself!

## Demo

Enjoy this demo of my final project, Space Maze!

https://youtu.be/_Yti9OEBfn8

## Resources

Link to questions: https://icebreakerideas.com/space-trivia/
Link to background music: https://youtu.be/UDVtMYqUAyw
