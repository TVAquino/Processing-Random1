boolean Start = false;
int Var = 1;
float A;
float R;
float G;
float B;
float Xe;
float Ye;
float r1;
float r2;
float T1;
float T2;
float T3;

void setup() {
  size(600, 600);
  frameRate(250);
  background(255);
}

void form(float Xf, float Yf, float Comprimento, float Altura, int Tipo) {
  switch(Tipo) {
  case 1 :
    ellipse(Xf, Yf, Comprimento, Altura);
    break;
  case 2 :
    rectMode(CENTER);
    rect(Xf, Yf, Comprimento, Altura);
    break;
  case 3 :
    triangle(Xf-T1, Yf+T1, Xf, Yf-T2, Xf+T3, Yf-T3);
    break;
  }
}

void draw() {

  //-----------------------------------

  Xe = random(0, 600);
  Ye = random(0, 600);
  R = random(0, 255);
  G = random(0, 255);
  B = random(0, 225);
  A = random(0, 255);
  T1 = random(1, 30);
  T2 = random(1, 30);
  T3 = random(1, 30);

  if (Var == 1) {
    r1 = random(0.1, 35);
    r2 = r1;
  }
  if ((Var == 2) || (Var == 3)) {
    r1 = random(1, 35);
    r2 = random(1, 35);
  }

  noStroke();
  fill(R, G, B, A);
  if (Start) {
    form(Xe, Ye, r1, r2, Var);
  }
}

void keyPressed() {

  if (keyCode == ENTER) {
    Start = true;
  }

  if (keyCode == BACKSPACE) {
    Start = false;
  }

  if (keyCode == LEFT) Var = 1;
  if (keyCode == UP) Var = 2;
  if (keyCode == RIGHT) Var = 3;
}