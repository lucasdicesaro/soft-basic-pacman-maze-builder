
class GridCell {

  int x = 0;
  int y = 0;
  int code = 0;
  String description = "";

  GridCell (int code, String description) {
    this.code = code;
    this.description = description;
  }

  GridCell (int x, int y, int code, String description) {
    this(code, description);
    this.x = x;
    this.y = y;
  }
}
