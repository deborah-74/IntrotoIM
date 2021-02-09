# Week 3 Assignment: Create a Game using object oriented programming

This week's assignment was very hectic for me. I did not really understand how to use classes, so I struggled when creating my game. However, I am glad that I struggled because in my attempt to overcome certain obstacles, I learnt a lot while doing research. I decided to create a game that involved a flower, which grew every time it touched a raindrop.

## Process

- Firstly, I created a raindrop class
- Next, I followed an online tutorial on how to accurately create a raindrop shape: https://gist.github.com/clavis-magna/42fe43e5f7ef0291596b
- After, I created three functions within the raindrop class, called: drawRaindrop(), moveRain() and erase(). The drawRaindrop() function draws the raindrop. The moveRain() function animates the raindrop so that it moves at a particular speed, and the erase() function erases any raindrop that touches the flower, and moves it to a random location
- Afterwards, I created a Flower class. Within this class, there were two functions called drawFlower(), which creates the flower using ellipses, and increase(), which increases the size of the flower when it collides with a raindrop
- Next, I created an array of size 100, which stored 100 raindrop objects. I filled up the array uin setup() using a for loop
- In draw(), I used an if statement that would trigger the increase() and erase() functions whenever a raindrop touched the flower

## Challenges

- I faced so many challenges while completing this week's assignment
- The main challenge I faced was not knowing how to find the distance between two objects from different classes
- I also did not know whether to put something within a class or in draw()

## What I learnt

- I learnt so much doing this week's assignment
- I learnt how to successfully use classes
- I learnt how to use PGraphics and PShapes, even though I did not end up using them in this assignment
- I learnt how to create an array of objects

![Alt Text](https://github.com/deborah-74/IntrotoIM/blob/main/February9/flower.gif)

