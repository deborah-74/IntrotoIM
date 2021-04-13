# Week 11 Assignment: Colour Match!

## Instructions

- Once the program starts running, the Processing window will display one of the following colours: red, blue, green, yellow, purple and orange
- On the Arduino board, you must press the button(s) that correspond to the displayed colour e.g press yellow and red if orange is displayed
- Once you press the correct buttons, the displayed colour will change

## Process

- Firstly, I imported the processing serial library into my processing sketch, and then initialised my port variable to be the Arduino port
- Next, I created an array for each colour that would store the RGB values for that specific colour. So, each array had three elements
- Within the draw function, I created several if statements that would return a character into the serial port based on the colour of the window
- Within the Arduino sketch, I initialised the buttons and set them as inputs within setup
- Within draw, I assigned the state of the button to a variable corresponding to each colour
- Then, I used several if statements to return a value to processing if the correct buttons were pressed
- In processing, if this value was equal to 1, the window's colour would change and the value would reset to 0

## Challenges

One of the biggest challenges that I faced during this assignment was trying to get the colour to change only when the correct button was pressed. Because the loop was run very quickly, the colour changed each time regardless of if the correct button was pressed. In an attempt to overcome this problem, I tried using noLoop() to stop the loop and only continue looping if the correct button was pressed. Though this did stop the colour from being changed, nothing happened whenever the correct button was pressed. I think this might have something to do with communication between arduino and processing stopping becausethe loop is no longer running. Eventually, I sent a variable from arduino to processing that would read 1 is the correct button was pressed. Then after the colour of the window was changed, I reset this variable to be 0

Another problem that I faced was trying to coordinate between Arduino and Processing and get data to be read from both. After watching several video tutorials online, I was finally able to achieve this

## What I Learnt

I learnt a lot during this assignment! I got much practice sending information between processing and arduino, which was difficult but fun. I learnt that using the write function is much easier than using the other method. I also figured out how to create the colours I needed using arrays, which was a really nice method. I am really excited to see what more can be done with both processing and arduino!
