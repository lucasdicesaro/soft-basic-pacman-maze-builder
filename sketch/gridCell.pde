
class GridCell {

  int x = 0;
  int y = 0;
  int value = 0;

  GridCell (int value) {
    this.value = value;
  }

  GridCell (int x, int y, int value) {
    this(value);
    this.x = x;
    this.y = y;
  }
}
