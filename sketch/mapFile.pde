
class MapFile { 
  String[] lines;
  
  MapFile () {
    lines = loadStrings("maps/map.txt");
  }
  
  TileGrid fillGrid() {
    TileGrid tileGrid = new TileGrid();
    String[] lines = getLines();
    for (int y = 0 ; y < lines.length && y < MAX_ROWS; y++) {
      String[] asciiCharacters = lines[y].split(",");
      for (int x = 0 ; x < asciiCharacters.length && x < MAX_COLS; x++) {
        tileGrid.setTileValue(x, y, Integer.parseInt(asciiCharacters[x]));
      }
    }
    return tileGrid;
  }
  
  void debug() {
    println("File content:");
    println("there are " + lines.length + " lines");
    for (int y = 0 ; y < lines.length && y < MAX_ROWS; y++) {
      String[] asciiCharacters = lines[y].split(",");
      for (int x = 0 ; x < asciiCharacters.length && x < MAX_COLS; x++) {
        print(asciiCharacters[x] + " ");
      }
      println("");
    }
  }

  String[] getLines() {
    return lines;
  }

  void dumpGridToFile(TileGrid tileGrid) {
    // Create a new file in the sketch directory
    PrintWriter output = createWriter("maps/generated_map.txt");

    for (int y = 0; y < MAX_ROWS; y++) {
      for (int x = 0; x < MAX_COLS; x++) {
        output.print(nf(tileGrid.getTileValue(x, y), 3)); // Write the value to the file
        if (x < MAX_COLS - 1) {
          output.print(",");
        }
      }
      if (y < MAX_ROWS - 1) {
        output.println("");
      }
    }

    output.flush(); // Writes the remaining data to the file
    output.close(); // Finishes the file
  }
} 
