class Circle{
  private float xCoordinate;
  private float yCoordinate;
  private float diameter;
  private int units;
  
  Circle(float distance, int height, int units){
    this.xCoordinate = 0;
    this.yCoordinate = height*distance;
    this.diameter = 10;
    this.units = units;
  }
  
  void drawMovingCircle(){
    ellipse(xCoordinate, yCoordinate, diameter, diameter);
  
    moveCircle();
  }

  private void moveCircle(){
    xCoordinate += units;
  }
}

public static final int WIDTH = 640;
public static final int HEIGHT = 480;


public static final float distance1 = 0.2;
public static final float distance2 = 0.4;
public static final float distance3 = 0.6;
public static final float distance4 = 0.8;

public static final int units1 = 1;
public static final int units2 = 2;
public static final int units3 = 3;
public static final int units4 = 4;

Circle circle1 = new Circle(distance1, HEIGHT, units1);
Circle circle2 = new Circle(distance2, HEIGHT, units2);
Circle circle3 = new Circle(distance3, HEIGHT, units3);
Circle circle4 = new Circle(distance4, HEIGHT, units4);

@Override
public void settings(){
  super.settings();
  size(WIDTH, HEIGHT);
}

@Override
public void setup(){
  
}

@Override
public void draw(){
  circle1.drawMovingCircle();
  circle2.drawMovingCircle();
  circle3.drawMovingCircle();
  circle4.drawMovingCircle();
}
