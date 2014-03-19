int shift = 20;
int ball_maxsize = 20;
int ball_minsize = 2;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  
  fill(40, 200, 160);
  noStroke();
  for(int x=shift; x<width; x+=shift) {
    for(int y=shift; y<height; y+=shift) {
      // 利 用 滑 鼠 到 各 個 點 的 距 離 ， 並 限 置 幅 度 -> 轉 變 為 我 們 可 以 使 用 的 動 態 半 徑
      float d_size = constrain(dist(x, y, mouseX, mouseY)/5, ball_minsize, ball_maxsize);
      ellipse(x, y, d_size, d_size);
    } 
  }
}
