
final int TEST_CELL = 255;
final int INVISIBLE_WALL = 253;
final int DOUBLE_WALL_VERTICAL_LEFT = 186;
final int DOUBLE_WALL_VERTICAL_RIGHT = 189;
final int DOUBLE_WALL_HORIZONTAL_TOP = 205;
final int DOUBLE_WALL_HORIZONTAL_BOTTOM = 193;
final int DOUBLE_CORNER_TOP_LEFT = 201;
final int DOUBLE_CORNER_TOP_RIGHT = 187;
final int DOUBLE_CORNER_BOTTOM_LEFT = 200;
final int DOUBLE_CORNER_BOTTOM_RIGHT = 188;
final int DOUBLE_MIDDLE_CORNER_HORIZONTAL_TOP_LEFT = 206;
final int DOUBLE_MIDDLE_CORNER_HORIZONTAL_TOP_RIGHT = 207;
final int DOUBLE_MIDDLE_CORNER_VERTICAL_LEFT_BOTTOM_LEFT = 208;
final int DOUBLE_MIDDLE_CORNER_VERTICAL_LEFT_TOP_LEFT = 209;
final int DOUBLE_MIDDLE_CORNER_VERTICAL_RIGHT_BOTTOM_RIGHT = 210;
final int DOUBLE_MIDDLE_CORNER_VERTICAL_RIGHT_TOP_RIGHT = 211;
final int SIMPLE_WALL_VERTICAL_LEFT = 179;
final int SIMPLE_WALL_VERTICAL_RIGHT = 190;
final int SIMPLE_WALL_HORIZONTAL_TOP = 196;
final int SIMPLE_WALL_HORIZONTAL_BOTTOM = 194;
final int SIMPLE_CORNER_TOP_LEFT = 218;
final int SIMPLE_CORNER_TOP_RIGHT = 191;
final int SIMPLE_CORNER_BOTTOM_LEFT = 192;
final int SIMPLE_CORNER_BOTTOM_RIGHT = 217;
final int SIMPLE_CONVEX_CORNER_TOP_LEFT = 219;
final int SIMPLE_CONVEX_CORNER_TOP_RIGHT = 220;
final int SIMPLE_CONVEX_CORNER_BOTTOM_LEFT = 221;
final int SIMPLE_CONVEX_CORNER_BOTTOM_RIGHT = 222;

final int UP_RESTRICTED_POSITION_WITH_PELLET = 212;
final int UP_RESTRICTED_POSITION_WITHOUT_PELLET = 213;

final int TUNNEL_BOUNDS_WITH_PELLET = 214;
final int TUNNEL_BOUNDS_WITHOUT_PELLET = 215;

final int PELLET = 250;
final int POWER_PELLET = 254;
final int CORRIDOR = 32;

final int PACMAN_TYPE = 166;
final int RED_GHOST_TYPE = 167;
final int PINK_GHOST_TYPE = 168;
final int BLUE_GHOST_TYPE = 169;
final int ORANGE_GHOST_TYPE = 170;

GridCell defaultElement = new GridCell(CORRIDOR, "CORRIDOR");

final GridCell[] allElementTypes = new GridCell[] {
  new GridCell(TEST_CELL, "TEST_CELL"),
  new GridCell(INVISIBLE_WALL, "INVISIBLE_WALL"),
  new GridCell(DOUBLE_WALL_VERTICAL_LEFT, "DOUBLE_WALL_VERTICAL_LEFT"),
  new GridCell(DOUBLE_WALL_VERTICAL_RIGHT, "DOUBLE_WALL_VERTICAL_RIGHT"),
  new GridCell(DOUBLE_WALL_HORIZONTAL_TOP, "DOUBLE_WALL_HORIZONTAL_TOP"),
  new GridCell(DOUBLE_WALL_HORIZONTAL_BOTTOM, "DOUBLE_WALL_HORIZONTAL_BOTTOM"),
  new GridCell(DOUBLE_CORNER_TOP_LEFT, "DOUBLE_CORNER_TOP_LEFT"),
  new GridCell(DOUBLE_CORNER_TOP_RIGHT, "DOUBLE_CORNER_TOP_RIGHT"),
  new GridCell(DOUBLE_CORNER_BOTTOM_LEFT, "DOUBLE_CORNER_BOTTOM_LEFT"),
  new GridCell(DOUBLE_CORNER_BOTTOM_RIGHT, "DOUBLE_CORNER_BOTTOM_RIGHT"),
  new GridCell(DOUBLE_MIDDLE_CORNER_HORIZONTAL_TOP_LEFT, "DOUBLE_MIDDLE_CORNER_HORIZONTAL_TOP_LEFT"),
  new GridCell(DOUBLE_MIDDLE_CORNER_HORIZONTAL_TOP_RIGHT, "DOUBLE_MIDDLE_CORNER_HORIZONTAL_TOP_RIGHT"),
  new GridCell(DOUBLE_MIDDLE_CORNER_VERTICAL_LEFT_BOTTOM_LEFT, "DOUBLE_MIDDLE_CORNER_VERTICAL_LEFT_BOTTOM_LEFT"),
  new GridCell(DOUBLE_MIDDLE_CORNER_VERTICAL_LEFT_TOP_LEFT, "DOUBLE_MIDDLE_CORNER_VERTICAL_LEFT_TOP_LEFT"),
  new GridCell(DOUBLE_MIDDLE_CORNER_VERTICAL_RIGHT_BOTTOM_RIGHT, "DOUBLE_MIDDLE_CORNER_VERTICAL_RIGHT_BOTTOM_RIGHT"),
  new GridCell(DOUBLE_MIDDLE_CORNER_VERTICAL_RIGHT_TOP_RIGHT, "DOUBLE_MIDDLE_CORNER_VERTICAL_RIGHT_TOP_RIGHT"),
  new GridCell(SIMPLE_WALL_VERTICAL_LEFT, "SIMPLE_WALL_VERTICAL_LEFT"),
  new GridCell(SIMPLE_WALL_VERTICAL_RIGHT, "SIMPLE_WALL_VERTICAL_RIGHT"),
  new GridCell(SIMPLE_WALL_HORIZONTAL_TOP, "SIMPLE_WALL_HORIZONTAL_TOP"),
  new GridCell(SIMPLE_WALL_HORIZONTAL_BOTTOM, "SIMPLE_WALL_HORIZONTAL_BOTTOM"),
  new GridCell(SIMPLE_CORNER_TOP_LEFT, "SIMPLE_CORNER_TOP_LEFT"),
  new GridCell(SIMPLE_CORNER_TOP_RIGHT, "SIMPLE_CORNER_TOP_RIGHT"),
  new GridCell(SIMPLE_CORNER_BOTTOM_LEFT, "SIMPLE_CORNER_BOTTOM_LEFT"),
  new GridCell(SIMPLE_CORNER_BOTTOM_RIGHT, "SIMPLE_CORNER_BOTTOM_RIGHT"),
  new GridCell(SIMPLE_CONVEX_CORNER_TOP_LEFT, "SIMPLE_CONVEX_CORNER_TOP_LEFT"),
  new GridCell(SIMPLE_CONVEX_CORNER_TOP_RIGHT, "SIMPLE_CONVEX_CORNER_TOP_RIGHT"),
  new GridCell(SIMPLE_CONVEX_CORNER_BOTTOM_LEFT, "SIMPLE_CONVEX_CORNER_BOTTOM_LEFT"),
  new GridCell(SIMPLE_CONVEX_CORNER_BOTTOM_RIGHT, "SIMPLE_CONVEX_CORNER_BOTTOM_RIGHT"),
  new GridCell(UP_RESTRICTED_POSITION_WITH_PELLET, "UP_RESTRICTED_POSITION_WITH_PELLET"),
  new GridCell(UP_RESTRICTED_POSITION_WITHOUT_PELLET, "UP_RESTRICTED_POSITION_WITHOUT_PELLET"),
  new GridCell(TUNNEL_BOUNDS_WITH_PELLET, "TUNNEL_BOUNDS_WITH_PELLET"),
  new GridCell(TUNNEL_BOUNDS_WITHOUT_PELLET, "TUNNEL_BOUNDS_WITHOUT_PELLET"),
  new GridCell(PELLET, "PELLET"),
  new GridCell(POWER_PELLET, "POWER_PELLET"),
  defaultElement,
  new GridCell(PACMAN_TYPE, "PACMAN_TYPE"),
  new GridCell(RED_GHOST_TYPE, "RED_GHOST_TYPE"),
  new GridCell(PINK_GHOST_TYPE, "PINK_GHOST_TYPE"),
  new GridCell(BLUE_GHOST_TYPE, "BLUE_GHOST_TYPE"),
  new GridCell(ORANGE_GHOST_TYPE, "ORANGE_GHOST_TYPE")
};

// Default values
// These values will be changed dynamically with map file information
int GHOSTS_HOUSE_EXIT_X = 14;
int GHOSTS_HOUSE_EXIT_Y = 14;

int TOTAL_PELLETS = 0;

// Grid cell positions
int MAZE_INIT_X = 0;
int MAZE_INIT_Y = 0;
int MAZE_END_X = MAX_ROWS - 1;
int MAZE_END_Y = MAX_COLS - 1;
// Window pixel coordinates
int MAZE_MIN_COORD_X = cellToCoord(MAZE_INIT_X);
int MAZE_MIN_COORD_Y = cellToCoord(MAZE_INIT_Y);
int MAZE_MAX_COORD_X = cellToCoord(MAZE_END_X) + SEVEN_PIXELS;
int MAZE_MAX_COORD_Y = cellToCoord(MAZE_END_Y) + SEVEN_PIXELS;

final int[] allWallTypes = new int[] {
  DOUBLE_CORNER_TOP_LEFT,
  DOUBLE_CORNER_TOP_RIGHT,
  DOUBLE_CORNER_BOTTOM_LEFT,
  DOUBLE_CORNER_BOTTOM_RIGHT,
  DOUBLE_WALL_VERTICAL_LEFT,
  DOUBLE_WALL_VERTICAL_RIGHT,
  DOUBLE_WALL_HORIZONTAL_TOP,
  DOUBLE_WALL_HORIZONTAL_BOTTOM,
  DOUBLE_MIDDLE_CORNER_HORIZONTAL_TOP_LEFT,
  DOUBLE_MIDDLE_CORNER_HORIZONTAL_TOP_RIGHT,
  DOUBLE_MIDDLE_CORNER_VERTICAL_LEFT_BOTTOM_LEFT,
  DOUBLE_MIDDLE_CORNER_VERTICAL_LEFT_TOP_LEFT,
  DOUBLE_MIDDLE_CORNER_VERTICAL_RIGHT_BOTTOM_RIGHT,
  DOUBLE_MIDDLE_CORNER_VERTICAL_RIGHT_TOP_RIGHT,
  SIMPLE_CORNER_TOP_LEFT,
  SIMPLE_CORNER_TOP_RIGHT,
  SIMPLE_CORNER_BOTTOM_LEFT,
  SIMPLE_CORNER_BOTTOM_RIGHT,
  SIMPLE_WALL_VERTICAL_LEFT,
  SIMPLE_WALL_VERTICAL_RIGHT,
  SIMPLE_WALL_HORIZONTAL_TOP,
  SIMPLE_WALL_HORIZONTAL_BOTTOM,
  SIMPLE_CONVEX_CORNER_TOP_LEFT,
  SIMPLE_CONVEX_CORNER_TOP_RIGHT,
  SIMPLE_CONVEX_CORNER_BOTTOM_LEFT,
  SIMPLE_CONVEX_CORNER_BOTTOM_RIGHT,
  INVISIBLE_WALL
};

final int[] allPelletTypes = new int[] {
  PELLET,
  POWER_PELLET,
  UP_RESTRICTED_POSITION_WITH_PELLET,
  TUNNEL_BOUNDS_WITH_PELLET
};

final int[] allCharacterTypes = new int[] {
  PACMAN_TYPE,
  RED_GHOST_TYPE,
  PINK_GHOST_TYPE,
  BLUE_GHOST_TYPE,
  ORANGE_GHOST_TYPE
};

GridCell selectedElement = defaultElement;

class TileGrid {
  int[][] grid;

  TileGrid () {  
    grid = new int[MAX_ROWS][MAX_COLS];
    for (int y = 0; y < MAX_ROWS; y++) {
      for (int x = 0; x < MAX_COLS; x++) {
        cleanTile(x, y);
      }
    }
  }

  void initializeSpecialVariables() {
    boolean mazeInitGridCoordSet = false;
    TOTAL_PELLETS = 0;
    for (int y = 0; y < MAX_ROWS; y++) {
      for (int x = 0; x < MAX_COLS; x++) {
        if (isAnyKindOfPellet(x, y)) {
          TOTAL_PELLETS++;
        } else if (getTileValue(x, y) == RED_GHOST_TYPE) {
          GHOSTS_HOUSE_EXIT_X = x;
          GHOSTS_HOUSE_EXIT_Y = y;
        } else if (getTileValue(x, y) == DOUBLE_CORNER_TOP_LEFT && !mazeInitGridCoordSet) { // The first occurrence matters
          MAZE_INIT_X = x;
          MAZE_INIT_Y = y;
          mazeInitGridCoordSet = true;
        } else if (getTileValue(x, y) == DOUBLE_CORNER_BOTTOM_RIGHT) { // The last occurrence matters
          MAZE_END_X = x;
          MAZE_END_Y = y;
        }
      }
    }

    MAZE_MIN_COORD_X = cellToCoord(MAZE_INIT_X);
    MAZE_MIN_COORD_Y = cellToCoord(MAZE_INIT_Y);
    MAZE_MAX_COORD_X = cellToCoord(MAZE_END_X) + SEVEN_PIXELS;
    MAZE_MAX_COORD_Y = cellToCoord(MAZE_END_Y) + SEVEN_PIXELS;
  }

  void renderGrid() {
    for (int y = 0; y < MAX_ROWS; y++) {
      for (int x = 0; x < MAX_COLS; x++) {
        drawStage(x, y);
      }
    }

    for (int y = 0; y < MAX_ROWS; y++) {
      for (int x = 0; x < MAX_COLS; x++) {
        drawCharacters(x, y);
      }
    }
  }
  
  void renderAllElements() {
    int columnNumber = 1;
    int cellY = 0;
    for (int i = 0; i < allElementTypes.length; i++) {
      cellY++;
      if (isCharacter(allElementTypes[i].code)) {
        cellY++;
      }
      if (cellY > MAX_ROWS) {
        columnNumber = columnNumber + 25;
        cellY = 1;
      }
      int cellX = MAX_COLS + columnNumber;
      drawElement(cellX, cellY, allElementTypes[i].code);
      drawGridCell(cellX, cellY, allElementTypes[i]);
      allElementTypes[i].x = cellX;
      allElementTypes[i].y = cellY;
    }
  }

  void cleanCell(int x, int y) {
    cleanSection(x, y, x, y);
  }
  
  void cleanSection(int fromX, int fromY, int toX, int toY) {

    fromX = validateCoordinate(fromX, MAX_COLS);
    toX = validateCoordinate(toX, MAX_COLS);
    fromY = validateCoordinate(fromY, MAX_ROWS);
    toY = validateCoordinate(toY, MAX_ROWS);

    for(int x = fromX; x <= toX; x++) {
      for(int y = fromY; y <= toY; y++) {
        drawStage(x, y);
      }
    }

    for(int x = fromX; x <= toX; x++) {
      for(int y = fromY; y <= toY; y++) {
        drawCharacters(x, y);
      }
    }
  }

  void drawStage(int x, int y) {
    int value = getTileValue(x, y);
    if (!isCharacter(value)) {
      drawElement(x, y, value);
    }
  }

  void drawCharacters(int x, int y) {
    int value = getTileValue(x, y);
    if (isCharacter(value)) {
      drawElement(x, y, value);
    }
  }

  void drawElement(int x, int y, int value) {
    if (isWall(value)) {
      drawBlueWallInCellGrid(x, y, value);
    } else {
      switch (value) {
        case INVISIBLE_WALL:
          drawInvisibleWallInCellGrid(x, y);
          break;
        case CORRIDOR:
        case UP_RESTRICTED_POSITION_WITHOUT_PELLET:
        case TUNNEL_BOUNDS_WITHOUT_PELLET:
          drawCorridorInCellGrid(x, y);
          break;
        case PELLET:
        case UP_RESTRICTED_POSITION_WITH_PELLET:
        case TUNNEL_BOUNDS_WITH_PELLET:
          drawPelletInCellGrid(x, y);
          break;
        case POWER_PELLET:
          drawPowerPelletInCellGrid(x, y);
          break;
        case PACMAN_TYPE:
          drawPacman(cellToCoord(x) + (CELL_SIZE / 2), cellToCoord(y) + (CELL_SIZE / 2), color(255, 204, 0), LEFT, 4);
          break;
        case RED_GHOST_TYPE:
          drawGhost(cellToCoord(x) + (CELL_SIZE / 2), cellToCoord(y) + (CELL_SIZE / 2), color(255, 0, 0));
          drawEyes(cellToCoord(x) + (CELL_SIZE / 2), cellToCoord(y) + (CELL_SIZE / 2), LEFT);
          break;
        case PINK_GHOST_TYPE:
          drawGhost(cellToCoord(x) + (CELL_SIZE / 2), cellToCoord(y) + (CELL_SIZE / 2), color(255, 184, 255));
          drawEyes(cellToCoord(x) + (CELL_SIZE / 2), cellToCoord(y) + (CELL_SIZE / 2), LEFT);
          break;
        case BLUE_GHOST_TYPE:
          drawGhost(cellToCoord(x) + (CELL_SIZE / 2), cellToCoord(y) + (CELL_SIZE / 2), color(0, 255, 255));
          drawEyes(cellToCoord(x) + (CELL_SIZE / 2), cellToCoord(y) + (CELL_SIZE / 2), LEFT);
          break;
        case ORANGE_GHOST_TYPE:
          drawGhost(cellToCoord(x) + (CELL_SIZE / 2), cellToCoord(y) + (CELL_SIZE / 2), color(255, 184, 82));
          drawEyes(cellToCoord(x) + (CELL_SIZE / 2), cellToCoord(y) + (CELL_SIZE / 2), LEFT);
          break;
      }
    }
  }

  void writeElement(int x, int y, int value) {
    setTileValue(x, y, value);
    drawElement(x, y, value);
  }

  int validateCoordinate(int coordinate, int maxValue) {
    if (coordinate < 0) {
      coordinate = 0;
    } else if (coordinate >= maxValue) {
      coordinate = maxValue - 1;
    }
    return coordinate;
  }

  boolean isWall(int gridValue) {
    for (int i = 0; i < allWallTypes.length; i++) {
      if (gridValue == allWallTypes[i]) {
        return true;
      }
    }
    return false;
  }

  boolean isCharacter(int gridValue) {
    for (int i = 0; i < allCharacterTypes.length; i++) {
      if (gridValue == allCharacterTypes[i]) {
        return true;
      }
    }
    return false;
  }

  boolean isAnyKindOfPellet(int x, int y) {
    int gridValue = getTileValue(x, y);
    for (int i = 0; i < allPelletTypes.length; i++) {
      if (gridValue == allPelletTypes[i]) {
        return true;
      }
    }
    return false;
  }

  boolean isPellet(int x, int y) {
    return getTileValue(x, y) == PELLET;
  }

  boolean isPowerPellet(int x, int y) {
    return getTileValue(x, y) == POWER_PELLET;
  }

  boolean isUpRestricted(int x, int y) {
    return getTileValue(x, y) == UP_RESTRICTED_POSITION_WITH_PELLET || getTileValue(x, y) == UP_RESTRICTED_POSITION_WITHOUT_PELLET;
  }

  boolean isUpRestrictedPositionWithPellet(int x, int y) {
    return getTileValue(x, y) == UP_RESTRICTED_POSITION_WITH_PELLET;
  }

  boolean isTunnelBounds(int x, int y) {
    return getTileValue(x, y) == TUNNEL_BOUNDS_WITH_PELLET || getTileValue(x, y) == TUNNEL_BOUNDS_WITHOUT_PELLET;
  }

  boolean isCenterInOneDimensionOfTheCell(int coord) {
    return coord == cuantizeCoord(coord) + (CELL_SIZE / 2);
  }

  boolean isAnyElement(int x, int y) {
    for (int i = 0; i < allElementTypes.length; i++) {
      if (x == allElementTypes[i].x && y == allElementTypes[i].y) {
        return true;
      }
    }
    return false;
  }

  GridCell getElementCode(int x, int y) {
    for (int i = 0; i < allElementTypes.length; i++) {
      if (x == allElementTypes[i].x && y == allElementTypes[i].y) {
        return allElementTypes[i];
      }
    }
    return defaultElement;
  }

  void cleanTile(int x, int y) {
    setTileValue(x, y, 0);
  }

  void debug() {
    println("Grid content:");
    for (int y = 0; y < MAX_ROWS; y++) {
      for (int x = 0; x < MAX_COLS; x++) {
        if (getTileValue(x, y) < 100) {
          print(" " + getTileValue(x, y) + " ");
        } else {
          print(getTileValue(x, y) + " ");
        }
      }
      println("");
    }
    println("All element types:");
    for (int x = 0; x < allElementTypes.length; x++) {
      println("x " + nf(allElementTypes[x].x, 3) + ", y " + nf(allElementTypes[x].y, 3), ": " + allElementTypes[x].code);
    }
    println("MAZE_INIT_X: " + MAZE_INIT_X + "\nMAZE_INIT_Y: " + MAZE_INIT_Y + "\nMAZE_END_X: " + MAZE_END_X + "\nMAZE_END_Y: " + MAZE_END_Y + 
          "\nMAZE_MIN_COORD_X: " + MAZE_MIN_COORD_X + "\nMAZE_MIN_COORD_Y: " + MAZE_MIN_COORD_Y + "\nMAZE_MAX_COORD_X: " + MAZE_MAX_COORD_X + "\nMAZE_MAX_COORD_Y: " + MAZE_MAX_COORD_Y + 
          "\nTOTAL_PELLETS: " + TOTAL_PELLETS + "\nGHOSTS_HOUSE_EXIT_X: " + GHOSTS_HOUSE_EXIT_X + "\nGHOSTS_HOUSE_EXIT_Y: " + GHOSTS_HOUSE_EXIT_Y);
  }

  int getTileValue(int x, int y) {
    int validX = validateCoordinate(x, MAX_COLS);
    int validY = validateCoordinate(y, MAX_ROWS);
    return grid[validY][validX];
  } 

  void setTileValue(int x, int y, int value) {
    grid[y][x] = value;
  }
}
