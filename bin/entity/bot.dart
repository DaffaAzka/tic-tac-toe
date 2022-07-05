import 'dart:math';

class Bot {

  static void turn(List<String> boardData) {
    Random r = Random();
    int botInput = r.nextInt(9);
    if(boardData[botInput] == "?") {
      boardData[botInput] = "O";
    } else {
      turn(boardData);
    }
  }



}