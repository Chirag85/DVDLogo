int x;
int y;
int xs=10;
int ys=10;
PImage dvd;
float r,g,b;
void setup()
{
  size(1080,720);
   dvd=loadImage("logo.jpg");
  x=400;
  y=200;

}
void pick()
{
    r=random(100,255);
   g=random(100,255);
    b=random(100,255);
}
void draw(){
  background(0);
  tint(r,g,b);
image(dvd,x,y,180,100);frameRate(30);//delay(20);
x+=xs;
y+=ys;
if(x+180==width || x==0) {xs=-xs;pick();}
if(y+100==height || y==0) {ys=-ys;pick();}
}
