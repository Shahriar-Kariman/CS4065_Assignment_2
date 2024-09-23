
import java.util.LinkedList;

class FreeformLine extends Shape{
  LinkedList<PVector> points;
  FreeformLine(color shapeColor, float weight){
    super(ShapeType.FREEFORM_LINE, shapeColor, weight);
    points = new LinkedList<PVector>();
    points.add(startPoint);
  }
  void draw(){
    if(this.active) {
      points.add(new PVector(mouseX, mouseY));
    }
    stroke(shapeColor);
    strokeWeight(this.weight);
    for(int i=1; i<points.size(); i++){
      line(
        points.get(i-1).x,
        points.get(i-1).y,
        points.get(i).x,
        points.get(i).y
       );
    }
  }
}
