class Point{
  int  x;
  int  y;

Point(this.x, this.y);

void translate(int dx, int dy){
  x +=dx;
  y +=dy;


}
void show(){
  print('Point($x,$y)');
}


}
void main(){
  Point p1 = Point(1,3);
  p1.show();

  p1.translate(3, 1);
  p1.show();
}