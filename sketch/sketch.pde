
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

  int CURRENT_LEVEL = 1; // TODO Remove this
  mapFile = new MapFile(CURRENT_LEVEL);
  tileGrid = mapFile.fillGrid();
  tileGrid.initializeSpecialVariables();
  tileGrid.renderGrid();
  tileGrid.renderAllElements();
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
