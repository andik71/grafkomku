int base = 40;
int x, y, gameScore = 0;
int changeX = -5;
int changeY = -5;
boolean gameOver = false;

void setup() {
  size(700, 440);
  x = (int)random(width);
  y = height - base;
}

void draw() {
  if (!gameOver) {
    background(0);
    fill(225, 0, 225);
    rect(mouseX, height - base, 200, base);
    fill(0, 0, 255);
    ellipse(x, y, 30, 30);
    x = x + changeX;
    y = y + changeY;
    if (x < 0 || x > width) {
      changeX = -changeX;
    }
    if (y < 0) {
      changeY = -changeY;
    }
    if (y > height - base) {
      if (x > mouseX && x < mouseX + 200) {
        changeY = -changeY;
        gameScore++;
      } else {
        gameOver = true;
      }
    }

    fill(255);
    textSize(20);
    text("Score: " + gameScore, 20, 30);
  } else {
    fill(255);
    textSize(40);
    textAlign(CENTER, CENTER);
    text("Game Over", width / 2, height / 2);
    textSize(20);
    text("Your Score: " + gameScore, width / 2, height / 2 + 50);
  }
}
