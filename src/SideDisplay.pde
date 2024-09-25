
class SideDisplay{
  SideDisplay(){}
  
  void draw(){
    String weight = "Weight Mode:  " + state.weightMode;
    String shape = "Shape Mode:   " + state.shapeMode;
    String text = weight + "\n" + shape + "\n";
    float textWidth = textWidth(text);
    float textHeight = (textAscent() + textDescent());
    float padding = 12;
    float left, top;
    left = 16;
    top = 16;
    float alpha = 180;
    float borderRectX = width - left-padding - textWidth;
    float borderRectY = top-textAscent()-padding/4;
    float borderRectWidth = textWidth + padding * 2;
    float borderRectHeight = textHeight * 3 + padding;
    if (
      isPointInRect(mouseX, mouseY, borderRectX, borderRectY, borderRectWidth, borderRectHeight)
    ){
      alpha = 255;
    }
    strokeWeight(1);
    stroke(0, 0, 0, alpha);
    noFill();
    rect(
      borderRectX,
      borderRectY,
      borderRectWidth,
      borderRectHeight,
      9
    );
    fill(0,0,0, alpha);
    text(text, width - left - textWidth, top);
    float colorRectLeft = width - left - textWidth;
    float colorRectTop = top + textHeight*2 - 1;
    float colorRectWidth = Math.max(textWidth(weight),textWidth(shape));
    float colorRectHeight = textDescent()*3+3;
    fill(state.getColor(), alpha);
    stroke(0, 0, 0, 0);
    rect(colorRectLeft, colorRectTop, colorRectWidth, colorRectHeight);
    noFill();
  }
  boolean isPointInRect(float px, float py, float x, float y, float w, float h) {
    return px >= x && px <= x + w && py >= y && py <= y + h;
  }
}
