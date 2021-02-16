# Week 4 Assignment: Data Visualisation: Cereal

I found this week's assignment quite difficult because the idea of loading a csv file into an array and splitting it was easy to comprehend, but hard to actually execute in processing. To begin the assignment, I first did research on google to find an interesting dataset. I came across a csv file about different brands of cereal and their properties i.e name, calories, sugar, fat etc. I thought it would be interesting to display the text using a specific colour, size and font depending on three of the cereal's properties.

## Process

- Firstly, I created a 'bowl' using the ellipse() function
- Next, I downloaded the csv file and stored it in my folder
![Alt Text](https://github.com/deborah-74/IntrotoIM/blob/main/February16/cerealTable.png)
- After, I created an array of strings called cereal[], and loaded the csv file into the array
- Within the draw function, I created an array of strings called properties[] to store each property of the array
- Then, I split each property of the one random row in the cereal[] array using the split() function
- I stored the first variable of the properties[] array as a string called cerealName
- I converted the fourth and tenth variables of properties[] into integers and stored them into integer variables called calories and sugar
- I assigned a random font to cerealName, and a size based on the number of calories
- I rotated the text based on the amount of sugar. I also assigned a random colour to the text
- Since this was done in the draw() function, after each loop a different text with different font, colour, size and rotation was displayed on the screen
- I also attempted to keep the text within the white circle

## Challenges

- This assignment as a whole was a challenge for me, as it took me a lot of time and research before I finally understood how to load csv files and split them based on their rows and columns
- Another part of the assignment that I found difficult was trying to only get the text to be displayed within the white circle. Because some of the words were really long, parts of the words were displayed on the black part

## What I learnt

I learnt a lot while completing this week's assignment. I practiced how to display text on the screen, how to load csv files into arrays and how to split them in different ways. I also experimented with the rotate() function which was fun. With more practice, I am confident that I will become much more comfortable with the concept of data visualisation and be able to execute this nicely. 

![Alt Text](https://github.com/deborah-74/IntrotoIM/blob/main/February16/cereal.gif)
