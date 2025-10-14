class Button {
  //Member Variables
  int x, y, w, h, b;
  color c1, c2;
  String val;
  boolean over;
  
  //Constructor
  Button(int x, int y, int w, int h, int b, String val, color c1, color c2) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.b = b;
    this.val = val;
    this.c1 = c1;
    this.c2 = c2;
    over = false;
  }

  //Member Methods
  void display() {
    rectMode(CENTER);
    if (over == true) {
      fill(c2);
    } else {
      fill(c1);
    }
    rect(x, y, w, h, b);
    fill(255);
    textAlign(CENTER, CENTER);
    textMode(CENTER);
    textSize(23);
    text(val, x, y);
  }

  void hover(int tempX, int tempY) {
    if (x>tempX-w/2 && x<tempX+w/2 && y>tempY-h/2 && y<tempY+h/2) {
      over = true;
    } else {
      over = false;
    }
  }
}
