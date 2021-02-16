//global variables
String cereal[]; //creates array of strings
String[] fontList = PFont.list();//creates array of strings containing list of font types


void setup() {
  size(800, 800);
  background(0);//black
  ellipse(400, 400, 780, 780);//bowl
  cereal = loadStrings("cereal.csv");//loads data into cereal array
  println(cereal.length);//checks size of the array
}


void draw() {
  int row = int(random(1, 78));//stores random integer into 'row'
  String properties[];//array of strings to store each property of cereal

  properties = split(cereal[row], ',');//splits each property

  String cerealName = properties[0];//stores cereal name into string cerealName
  int calories = int(properties[3]);//converts the calories into an integer and stores it in variable 'calories'
  int sugar = int(properties[9]);//converts the amount of sugar into an integer and stores it in variable 'sugar'

  //creates text
  PFont f = createFont(fontList[int(random(0, 721))], 32);//assigns random font
  textFont(f, calories);//size of text displayed is dependent on number of calories
  fill(random(0, 255), random(0, 255), random(0, 255));//gives random colour

  //gives text random position within the white parts (circle)
  int x = int(random(width/2));
  int y = int(random(40, height));
  if ( get(x, y) == color(255) ) {

    //rotates the text based on amount of sugar
    pushMatrix();
    rotate(radians(sugar));
    text(cerealName, x, y);//displays text
    popMatrix();
  }
}
