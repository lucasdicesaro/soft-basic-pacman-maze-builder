
MapFile mapFile;
TileGrid tileGrid;
Keyboard keyboard;

PFont f;

void setup() {
  fullScreen();
  //size(224 * PIXEL_SIZE, 288 * PIXEL_SIZE);
  //size(224, 288); // PIXEL_SIZE = 1
  //size(448, 576); // PIXEL_SIZE = 2
  //size(672, 864); // PIXEL_SIZE = 3
  //size(896, 1152); // PIXEL_SIZE = 4
  //size(1120, 1440); // PIXEL_SIZE = 5
  background(0);

  f = createFont("Arial", 16, true);
  initializeScaleVariables();

  keyboard = new Keyboard();

  mapFile = new MapFile();
  tileGrid = mapFile.fillGrid();
  tileGrid.initializeSpecialVariables();
  tileGrid.renderGrid();
  tileGrid.renderAllElements();

  // Draw label
  drawText(MAX_COLS + 25, MAX_ROWS - 2, "Selected element:");
}

void draw() {

}

void keyPressed() {
  if (key == CODED) {
    // https://forum.processing.org/one/topic/holding-down-a-key-bug.html
    keyboard.setUserKeyPressed();

  } else if (key == 'd') {
    printScaleVariables();
    mapFile.debug();
    tileGrid.debug();
  }
}

void keyReleased() {
  keyboard.releaseUserKey();
}

void mousePressed() {
  int row = mouseY;
  int col = mouseX;
  //if (grid[row][col] == 0) {
  //}
  println(row + "," + col);
}

void mouseClicked() {
  int cellX = coordToCell(mouseX);
  int cellY = coordToCell(mouseY);
  if (cellX > MAX_COLS || cellY > MAX_ROWS) { // Is outside the maze?
    if (tileGrid.getElementCode(cellX, cellY) != null) { // Is element selected?
      selectedElement = tileGrid.getElementCode(cellX, cellY);
      // Clean cells
      drawBlackCellInSection(MAX_COLS + 24, MAX_ROWS, MAX_COLS + 50, MAX_ROWS);
      // Draw element
      tileGrid.drawElement(MAX_COLS + 25, MAX_ROWS, selectedElement.code);
      // Draw code and description
      drawGridCell(MAX_COLS + 25, MAX_ROWS, selectedElement);
      //println(cellX + "," + cellY + ": " + selectedElement.code);
    }
  } else {
    // Inside the maze
      //selectedElement = tileGrid.getElementCode(cellX, cellY);
      tileGrid.writeElement(cellX, cellY, selectedElement.code);

    // TODO: Generate file with the grid content.
  }
  //int coordX = cellToCoord(cellX);
  //int coordY = cellToCoord(cellY);
  //println(coordX + "," + coordY);
}

void mouseReleased() {
  //println("mouseReleased");
}

void mouseMoved() {
  //println("mouseMoved");
}

void mouseDragged() {
  int cellX = coordToCell(mouseX);
  int cellY = coordToCell(mouseY);
  if (cellX < MAX_COLS && cellY < MAX_ROWS) { // Is inside the maze?
    tileGrid.writeElement(cellX, cellY, selectedElement.code);
  }
}

void mouseWheel() {
  //println("mouseWheel");
}
