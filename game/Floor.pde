class Floor{
  int x,y,l,h;
  Floor(int a, int b, int c,int d){
    x=a;
    y=b;
    l=c;
    h=d;
  }
  
  void display(){
    fill(0);
    rect(x, y, l, h);
  }
  //playerが床に立てるかのを調べる
  boolean isstand(){
    if(player.x >= x && player.x <= x+l){
      if(player.y - y >= 0){
        return true;
      }
    }
    return false;
  }
  //playerの頭が床に当てるかのを調べる
  boolean bokean(){
    if(player.x >= x && player.x <= x+l){
      if(player.y - y == (player.r+2) ){
        return true;
      }
    }
    return false;
  }
}