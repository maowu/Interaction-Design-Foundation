int pigeye_pos = 0;

void setup() {
  size(400, 400);
}


void draw() {
  //測 試
  background(255);
  
  //開 始 畫 豬 頭
  //選 擇 不 填 色 ,使 用 外 框 色  
  noFill();
  stroke(78, 198, 227);
  ellipse(200, 200, 300, 250);
  ellipse(200, 200, 150, 80);
  ellipse(170, 200, 20, 50);
  ellipse(230, 200, 20, 50);
  ellipse(100, 75, 50, 50);
  ellipse(300, 75, 50, 50);
  
  //會 動 的 豬 眼 睛
  //選 擇 填 色 ,不 使 用 外 框 色
  fill(0);
  noStroke();
  // 將 兩 眼 的 中 心 點 位 置 限 制 在 170~230
  pigeye_pos = constrain(mouseX, 170, 230);
  ellipse(pigeye_pos-50, 140, 20, 20);
  ellipse(pigeye_pos+50, 140, 20, 20);
}
  
  
  
  
