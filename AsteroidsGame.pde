Star[] nightSky = new Star [200];
ArrayList <Asteroid> liu = new ArrayList <Asteroid>();
Spaceship heat = new Spaceship();
int a = 10;
int lev = 1;
public void setup()
{
  size(500,500);
  background(0);
  for(int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for(int p = 0; p < a; p++)
  {
    liu.add(new Asteroid());
  }
}
public void draw() 
{
 background(0);
  for(int i = 0; i < nightSky.length; i++)
    {
      nightSky[i].show();
    }
  for(int p = 0; p < liu.size(); p++)
    {
      liu.get(p).show();
      liu.get(p).move();
      if(dist(liu.get(p).getMyX(), liu.get(p).getMyY(), heat.getMyX(), heat.getMyY()) < 20){
          liu.remove(p);
          break;
        }
    }
  heat.move();
  heat.show();
  if(liu.size() == 0){
    for(int p = 0; p < (a+lev*5-5); p++)
    {
      liu.add(new Asteroid());
    }
    lev++;
  }
}
public void keyPressed(){
  if(key == 's'){
      heat.stop();
      heat.hyperSpace();
  }else if(key == 'w'){
      heat.accelerate(.5);
  }else if(key == 'a'){
      heat.turn(-30);
  }else if(key == 'd'){
      heat.turn(30);
    }
  }
