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