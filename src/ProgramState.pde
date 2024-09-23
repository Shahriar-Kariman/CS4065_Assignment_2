
import java.util.LinkedList;

enum ShapeType{
  FREEFORM_LINE,
  STRAIGHT_LINE,
  RECTANGLE,
  OVAL
}

enum ColorType {
  BLACK,
  RED,
  GREEN,
  BLUE
}

enum WeightType {
  THIN,
  MEDIUM,
  THICK
}

class ProgramState {
  ShapeType shapeMode;
  ColorType colorMode;
  WeightType weightMode;
  
  boolean active = false;
  
  LinkedList<Shape> shapes;
  
  ProgramState(){
    shapeMode = ShapeType.RECTANGLE;
    colorMode = ColorType.BLACK;
    weightMode = WeightType.THIN;
    shapes = new LinkedList<Shape>();
  }
  
  void draw(){
    for(int i = 0; i<shapes.size(); i++){
      shapes.get(i).draw();
    }
    // Short cuts for shapes
    if(keys['r']){
      shapeMode = ShapeType.RECTANGLE;
    }
    if(keys['o']){
      shapeMode = ShapeType.OVAL;
    }
    // short kuts for lines
    if(keys['l']){
      if(keys['1']) this.shapeMode = ShapeType.STRAIGHT_LINE;
      if(keys['2']) this.shapeMode = ShapeType.FREEFORM_LINE;
    }
    // short cut for colors
    if(keys['c']){
      if(keys['0']) this.colorMode = ColorType.BLACK;
      if(keys['1']) this.colorMode = ColorType.RED;
      if(keys['2']) this.colorMode = ColorType.GREEN;
      if(keys['3']) this.colorMode = ColorType.BLUE;
    }
    // shor cut for weight
    if(keys['w']){
      if(keys['1']) this.weightMode = WeightType.THIN;
      if(keys['2']) this.weightMode = WeightType.MEDIUM;
      if(keys['3']) this.weightMode = WeightType.THICK;
    }
  }
  
  Shape makeShape(){
    Shape s;
    if (this.shapeMode==ShapeType.FREEFORM_LINE){
      s = new FreeformLine(
        getColor(),
        getWeight()
      );
    }
    else{
      s = new Shape(
        this.shapeMode,
        getColor(),
        getWeight()
      );
    }
    return s;
  }
  
  color getColor(){
    switch(this.colorMode){
      case BLACK: return color(0);
      case RED: return color(255, 0, 0);
      case GREEN: return color(0, 255, 0);
      case BLUE: return color(0, 0, 255);
      default: return color(255);
    }
  }
  
  float getWeight() {
    switch (this.weightMode) {
      case THIN: return 2;
      case MEDIUM: return 5;
      case THICK: return 10;
      default: return 2;
    }
  }
}
