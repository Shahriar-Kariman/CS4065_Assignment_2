
class SideDisplay{
  SideDisplay(){}
  
  void draw(){
    String weight = "Weight Mode:  " + state.weightMode;
    String shape = "Shape Mode:   " + state.shapeMode;
    String c = "Color Mode:    ";
    String text = weight + "\n" + shape + "\n" + c;
    float textWidth = textWidth(text);
    float textHeight = (textAscent() + textDescent()) * 3;
    stroke(0);
    noFill();
    float padding = 12;
    float left, top;
    left = 16;
    top = 16;
    strokeWeight(1);
    rect(
      left-padding,
      top-textAscent()-padding/4,
      textWidth + padding * 2,
      textHeight + padding
    );
    fill(0);
    text(text, top, left);
    float colorRectLeft = left + textWidth(c) + 3;
    float colorRectTop = top + textHeight/3*2 - 1;
    float colorRectWidth = Math.max(textWidth(weight),textWidth(shape))-textWidth(c);
    float colorRectHeight = textDescent()*2+3;
    fill(state.getColor());
    rect(colorRectLeft, colorRectTop, colorRectWidth, colorRectHeight);
    noFill();
  }
}
