class MovingWall extends Wall{
  float x0 = x;
  float y0 = y;
  
  MovingWall(float wallX, float wallY, float wallW, float wallH){
    super(wallX, wallY, wallW, wallH);
  }
  
  void move(float stepX, float stepY, float limitX, float limitY){//limitX,limitY = 壁が跳ね返る座標
    x += stepX;
    y += stepY;
    if(stepX < 0 || stepY < 0){
      println("速度が正の値ではありません");
      return;
    }
    if(x > limitX || x < x0){
      stepX = -stepX;
    }
    if(y > limitY || y < y0){
      stepY = -stepY;
    }      
  }
}