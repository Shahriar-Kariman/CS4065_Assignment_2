
ProgramState state = new ProgramState();
Shape shape;

// to handle multiple keys being pressed
boolean[] keys = new boolean[256];

void setup() {
  fullScreen();
  background(255);
}

void draw() {
  background(255);
  state.draw();
  if(state.active){
    shape.draw();
  }
}

void mousePressed() {
  if(!state.active) {
    state.active = true;
    shape = state.makeShape();
  }
}

void mouseReleased() {
  if(state.active){
    shape.active = false;
    state.shapes.add(shape);
    state.active = false;
    shape = null;
  }
}

void keyPressed(){
  keys[key] = true;
}

void keyReleased(){
  keys[key] = false;
}
