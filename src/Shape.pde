
class Shape{
  ShapeType shape;
  color shapeColor;
  float weight;
  boolean active = true;
  
  PVector startPoint = new PVector(mouseX, mouseY);
  PVector endPoint = new PVector(mouseX, mouseY);
  
  Shape(ShapeType shape, color shapeColor, float weight){
    this.shape = shape;
    this.shapeColor = shapeColor;
    this.weight = weight;
  }
  
  void draw(){
    if(this.active) {
      endPoint = new PVector(mouseX, mouseY);
    }
    stroke(shapeColor);
    strokeWeight(this.weight);
    if(shape==ShapeType.RECTANGLE) {
      float w = endPoint.x - startPoint.x;
      float h = endPoint.y - startPoint.y;
      rect(startPoint.x, startPoint.y, w, h);
    }
    else {
      float centerX = (startPoint.x + endPoint.x) / 2;
      float centerY = (startPoint.y + endPoint.y) / 2;
      float w = abs(endPoint.x - startPoint.x);
      float h = abs(endPoint.y - startPoint.y);
      
      ellipse(centerX, centerY, w, h);
    }
  }
}
