// Mr Kapptie | 25 Sept 2025 | Calculator
Button bc,b0;

void setup() {
  size(210,250);
  background(#323B5D);
  bc = new Button(25,75,30,30,'C',#B77127,#B771AA);
  b0 = new Button(45,225,70,30,'0',#2F58BC,#B771AA);
  b0 = new Button(45,225,70,30,'±',#2F58BC,#B771AA);
}

void draw() {
  background(#323B5D);
  bc.display();
  bc.hover(mouseX,mouseY);
  b0.display();
  b0.hover(mouseX,mouseY);
  updateDisplay();
}

void mousePressed() {}

void updateDisplay() {
  rectMode(CORNER);
  rect(10,10,190,30,5);
  fill(0);
  text("0",25,25);
}

void performCalculation() {}
