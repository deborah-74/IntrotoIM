//create the size of the canvas
size(640,360);
background(0,0,0); //colour

stroke(255,255,255);//white
fill(255,0,0);

triangle(320,120,210,360,420,360);
//head
fill(255,255,255);//white
ellipse(320,120,200,200);

//ear
fill(140,82,45);//brown
ellipse(216,120,25,35);

//earring
stroke(255,215,0);
line(216,130,216,180);
triangle(212,180,222,180,216,190);


//hair
stroke(255,255,255);
ellipse(320,130,200,200);
fill(255,255,255);//white
ellipse(320,15,30,30);
ellipse(345,15,30,30);
ellipse(359,22,30,30);
ellipse(425,45,30,30);
ellipse(415,45,30,30);
ellipse(405,45,30,30);
ellipse(405,35,30,30);
ellipse(395,35,30,30);
ellipse(385,30,30,30);
ellipse(435,55,30,30);
ellipse(445,70,30,30);
ellipse(445,85,30,30);
ellipse(445,100,30,30);
ellipse(445,115,30,30);
ellipse(445,130,30,30);
ellipse(445,145,30,30);
ellipse(445,160,30,30);
ellipse(445,175,30,30);
ellipse(445,190,30,30);
ellipse(445,205,30,30);
ellipse(445,220,30,30);
ellipse(445,235,30,30);
ellipse(445,250,30,30);
ellipse(440,130,30,30);
ellipse(435,145,30,30);
ellipse(435,160,30,30);
ellipse(435,175,30,30);
ellipse(435,190,30,30);
ellipse(435,205,30,30);
ellipse(435,220,30,30);
ellipse(435,235,30,30);
ellipse(435,250,30,30);
ellipse(415,65,30,30);
ellipse(380,30,30,30);
ellipse(423,70,30,30);
ellipse(425,85,30,30);
ellipse(430,100,30,30);
ellipse(435,115,30,30);
ellipse(433,130,30,30);
ellipse(445,145,30,30);

//eye
fill(255,255,255);//white
ellipse(280,80,20,20);//left
ellipse(360,80,20,20);//right
fill(0,0,0);//white
ellipse(280,80,9,9);//left pupil
ellipse(360,80,9,9);//right pupil
stroke(0,0,0);
noFill();
arc(280,80,50,50,radians(225),radians(315)); //eyebrow
arc(360,80,50,50,radians(225),radians(315));

//eyelashes - left
line(272,72,265,65);
line(280,69,280,60);
line(288,72,295,65);

//eyelashes - right
line(352,72,345,65);
line(360,69,360,60);
line(368,72,375,65);

//nose
fill(0,0,0);
stroke(0,0,0);
ellipse(316,120,5,5);
ellipse(324,120,5,5);

//mouth
stroke(255,0,0);//red
fill(255,192,203);//pink
arc(300, 180, 60, 40, 0, PI+QUARTER_PI);
