int myX=25;
int myY=25;
float total;
float totalTotal=0;
int totaldie;
String totalAverage;
int numRow=5;
int numCol=10;
int numRowN=0;
int numColN=0;
//N is for the current amount
void setup()
{
  size(750, 500);
  noLoop();
}
void draw()
{
  myX=width/2-(numCol/2)*55;
  myY=height/2-((numRow/2)*55+75);
  //75 because of line 45
  total=0;
   numColN=0;
   numRowN=0;
  background(255);
  while (numRowN<numRow) {
    while (numColN<numCol) {
      die Bob= new die(myX, myY);
      Bob.show();
      myX=myX+55;
      totaldie++;
      total=total+(Bob.f);
      numColN++;
    }
    myY=myY+55;
    myX=width/2-(numCol/2)*55;
    numColN=0;
    numRowN++;
  }
  totalAverage=String.format("%.2g%n",totalTotal/totaldie);
  totalTotal=totalTotal+total;
  textSize(16);
  text("total on screen:  "+total, width/2-12.5, height-40);
  text("dice rolled:  "+totaldie, width/2-25, height-55);
  text("total full time:  "+totalTotal, width/2-25, height-75);
  text("average: "+totalAverage, width/2-25, height-25);
}
void mousePressed()
{
  redraw();
}
