
import 'dart:io';

import '../utility/input_util.dart';

class Player {
  static void turn(List<String> boardData) {
    int playerInput = InputUtil.inputInt();
    if(boardData[playerInput] == "?") {
      boardData[playerInput] = "X";
    } else {
      print("Try Again!");
      turn(boardData);
    }
  }
}