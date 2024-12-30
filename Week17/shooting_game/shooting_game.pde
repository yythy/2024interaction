int shooterX;  // 射擊器的 X 座標
int shooterY;  // 射擊器的 Y 座標（固定在底部）
int shooterWidth = 60, shooterHeight = 20;  // 射擊器尺寸

ArrayList<Bullet> bullets;  // 存放我方子彈的列表
int bulletSpeed = 12;  // 子彈的速度
int bulletCount = 0;

int ballRadius = 20;  // 球的半徑
ArrayList<Ball> balls;  // 存放所有球的列表
ArrayList<EnemyBullet> enemyBullets;  // 存放敵方子彈的列表

int timer = 30;  // 每關的遊戲時間（秒）
int startTime;   // 遊戲開始的時間戳

int level = 0;  // 關卡（0 表示開始畫面）
int lives = 3;  // 我方生命
boolean gameOver = false;  // 是否遊戲結束
boolean levelComplete = false;  // 是否完成當前關卡

void setup() {
  size(400, 600);
  shooterX = width / 2 - shooterWidth / 2;
  shooterY = height - 50;

  bullets = new ArrayList<Bullet>();
}

void draw() {
  if (level == 0) {
    showStartScreen();  // 顯示開始畫面
  } else if (level > 0 && levelComplete) {
    showLevelTransitionScreen();  // 顯示關卡過渡畫面
  } else {
    runGame();  // 遊戲運行邏輯
  }
}

void showStartScreen() {
  background(0);
  fill(255);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("Shooting Game", width / 2, height / 2 - 50);
  textSize(20);
  text("Press ENTER to start", width / 2, height / 2 + 20);
}

void showLevelTransitionScreen() {
  background(0);
  fill(255);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("Level " + level + " Complete!", width / 2, height / 2 - 50);
  textSize(20);
  if (level < 2) {
    text("Press ENTER to proceed to Level " + (level + 1), width / 2, height / 2 + 20);
  } else {
    text("Press ENTER to finish the game", width / 2, height / 2 + 20);
  }
}

void runGame() {
  background(0);  // 黑色背景

  // 顯示射擊器
  fill(0, 255, 0);  // 綠色射擊器
  rect(shooterX, shooterY, shooterWidth, shooterHeight);

  // 更新並顯示所有球
  for (int i = balls.size() - 1; i >= 0; i--) {
    Ball ball = balls.get(i);
    ball.update();
    ball.display();

    // 檢查每個子彈是否擊中球
    for (int j = bullets.size() - 1; j >= 0; j--) {
      Bullet bullet = bullets.get(j);
      if (dist(bullet.x, bullet.y, ball.x, ball.y) < ballRadius) {
        balls.remove(i);  // 移除被擊中的球
        bullets.remove(j);  // 移除擊中的子彈
        bulletCount--;
        println("Hit!");
        break;
      }
    }
  }

  // 顯示並更新我方子彈
  for (int i = bullets.size() - 1; i >= 0; i--) {
    Bullet bullet = bullets.get(i);
    bullet.update();
    bullet.display();

    // 子彈超出畫布
    if (bullet.y < 0) {
      bullets.remove(i);
      bulletCount--;
    }
  }

  // 顯示敵方子彈並檢查碰撞
  if (level == 2) {  // 第二關添加敵方子彈
    for (int i = enemyBullets.size() - 1; i >= 0; i--) {
      EnemyBullet eb = enemyBullets.get(i);
      eb.update();
      eb.display();

      // 檢查敵方子彈是否擊中我方射擊器
      if (dist(eb.x, eb.y, shooterX + shooterWidth / 2, shooterY) < 15) {
        enemyBullets.remove(i);  // 刪除擊中的敵方子彈
        lives--;  // 生命減少
        println("Lives left: " + lives);
        if (lives <= 0) {
          endGame(false);  // 遊戲結束
        }
      }
    }

    // 隨機生成敵方子彈
    if (frameCount % 40 == 0) {  
      enemyBullets.add(new EnemyBullet());
    }
  }

  // 顯示計時器和關卡
  int timeLeft = timer - (millis() - startTime) / 1000;
  fill(255);
  textSize(20);
  text("Time: " + max(timeLeft, 0), 30, 30);
  text("Level: " + level, 30, 60);
  text("Lives: " + lives, 30, 90);

  // 檢查是否完成當前關卡
  if (balls.isEmpty() && !levelComplete) {
    levelComplete = true;
  }

  // 檢查是否時間用完
  if (timeLeft <= 0 && !gameOver) {
    endGame(false);  // 遊戲結束，失敗
  }
}

// 開始新關卡
void startLevel(int newLevel) {
  level = newLevel;
  balls = new ArrayList<Ball>();
  enemyBullets = new ArrayList<EnemyBullet>();
  int ballCount = 5 + level * 3;  // 每關增加更多的球
  for (int i = 0; i < ballCount; i++) {
    balls.add(new Ball());
  }
  startTime = millis();  // 重置計時器
  levelComplete = false;
}

// 顯示結束畫面
void endGame(boolean win) {
  background(0);
  fill(255);
  textSize(40);
  textAlign(CENTER, CENTER);
  if (win) {
    text("You Win!", width / 2, height / 2);
  } else {
    text("Game Over!", width / 2, height / 2);
  }
  noLoop();
}

// 處理鍵盤輸入
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT && shooterX > 0) {
      shooterX -= 10;  // 向左移動射擊器
    }
    if (keyCode == RIGHT && shooterX < width - shooterWidth) {
      shooterX += 10;  // 向右移動射擊器
    }
  }

  if (key == ' ' && level > 0 && !levelComplete) {  // 按下空格發射多發子彈
    if (bulletCount < 3) {
      bullets.add(new Bullet(shooterX + shooterWidth / 2, shooterY));  // 添加新子彈
      bulletCount++;
    }
    else{
    }
  }

  if (key == ENTER) {
    if (level == 0) {  // 從開始畫面進入遊戲
      startLevel(1);
    } else if (levelComplete) {  // 從過渡畫面進入下一關
      if (level < 2) {
        startLevel(level + 1);
      } else {
        endGame(true);
      }
    }
  }
}

// 球的類別
class Ball {
  float x, y;  // 球的位置
  float speedX, speedY;  // 球的速度

  Ball() {
    x = random(ballRadius, width - ballRadius);
    y = random(ballRadius, height / 2);
    speedX = random(2, 5) * (random(1) > 0.5 ? 1 : -1);
    speedY = random(2, 5) * (random(1) > 0.5 ? 1 : -1);
  }

  void update() {
    x += speedX;
    y += speedY;

    // 邊界反彈
    if (x < ballRadius || x > width - ballRadius) {
      speedX *= -1;
    }
    if (y < ballRadius || y > height / 2) {
      speedY *= -1;
    }
  }

  void display() {
    fill(255, 0, 0);  // 紅色球
    ellipse(x, y, ballRadius * 2, ballRadius * 2);
  }
}

// 子彈的類別
class Bullet {
  float x, y;  // 子彈的位置
  float speed = bulletSpeed;  // 子彈速度

  Bullet(float startX, float startY) {
    x = startX;
    y = startY;
  }

  void update() {
    y -= speed;  // 子彈向上移動
  }

  void display() {
    fill(255, 255, 0);  // 黃色子彈
    ellipse(x, y, 10, 10);
  }
}

// 敵方子彈的類別
class EnemyBullet {
  float x, y;  // 子彈的位置
  float speed = 6;  // 子彈速度

  EnemyBullet() {
    x = random(0, width);  // 隨機生成在頂部
    y = 0;
  }

  void update() {
    y += speed;  // 子彈向下移動
  }

  void display() {
    fill(255, 0, 0);  // 紅色敵方子彈
    ellipse(x, y, 10, 10);
  }
}
