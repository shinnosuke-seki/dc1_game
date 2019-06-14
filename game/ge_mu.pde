/*
======================================================================
                             グローバル変数の宣言，初期化
======================================================================
*/

Spike s1,s2;

/*
======================================================================
                             setup()関数
======================================================================
*/
void setup() {
  
  size(600, 600);
  
  frameRate(120);
  textSize(30);
  textAlign(CENTER, CENTER);
  
  s1 = new MovingSpike(width/2, height, 20, 'u');
  s2 = new StoppingSpike(width/2, height/2, 20, 'd');
}

/*
======================================================================
                             draw()関数
======================================================================
*/
void draw() {
  
  background(255);
  
  s1.display();
  s2.display();
  s1.move(3.0);
}

/*
======================================================================
                             自作関数
======================================================================
*/