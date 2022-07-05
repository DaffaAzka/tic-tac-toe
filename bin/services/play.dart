
import 'dart:ffi';

import '../entity/bot.dart';
import 'dart:io';

import '../entity/player.dart';
import '../utility/clear_util.dart';
import '../utility/input_util.dart';

class Play {

  List<String> boardData = ["?", "?", "?", "?", "?", "?", "?", "?", "?"];
  Bot bot = Bot();

  void board() {
    print("___________________");
    print("|   TIC TAC TOE   |");
    print("-------------------");

    print(" ");

    print("===================");
    print("=  ${boardData[0]}  =  ${boardData[1]}  =  ${boardData[2]}  =");
    print("===================");
    print("=  ${boardData[3]}  =  ${boardData[4]}  =  ${boardData[5]}  =");
    print("===================");
    print("=  ${boardData[6]}  =  ${boardData[7]}  =  ${boardData[8]}  =");
    print("===================");

    print(" ");
  }

  void start() {
    for(var i = 0; i < 5; i++ ) {

      if(i == 4) {
        if (winAndLose()) {
          break;
        } else {
          board();
          print("Tie!");
        }
      } else {
        board();
        Player.turn(boardData);
        Bot.turn(boardData);
        ClearUtil.clear();
      }

      if (winAndLose()) {
        break;
      }
    }

    print("Create by: Daffa Azka");

    print(" ");

    while(true) {
      String s = InputUtil.inputStr("Try Again? (y/n)");

      if(s == "y") {
        boardData = ["?", "?", "?", "?", "?", "?", "?", "?", "?"];
        start();
      } else {
        break;
      }
    }
  }

  bool winAndLose() {
    if(boardData[0] == "X" && boardData[1] == "X" && boardData[2] == "X") {
      board();
      print("Player Win!");
      return true;
    } else if(boardData[0] == "O" && boardData[1] == "O" && boardData[2] == "O") {
      board();
      print("Bot Win!");
      return true;
    } else if(boardData[3] == "X" && boardData[4] == "X" && boardData[5] == "X") {
      board();
      print("Player Win!");
      return true;
    } else if(boardData[3] == "O" && boardData[4] == "O" && boardData[5] == "O") {
      board();
      print("Bot Win!");
      return true;
    } else if(boardData[6] == "X" && boardData[7] == "X" && boardData[8] == "X") {
      board();
      print("Player Win!");
      return true;
    } else if(boardData[6] == "O" && boardData[7] == "O" && boardData[8] == "O") {
      board();
      print("Bot Win!");
      return true;
    } else if(boardData[0] == "X" && boardData[3] == "X" && boardData[6] == "X") {
      board();
      print("Player Win!");
      return true;
    } else if(boardData[0] == "O" && boardData[3] == "O" && boardData[6] == "O") {
      board();
      print("Bot Win!");
      return true;
    } else if(boardData[1] == "X" && boardData[4] == "X" && boardData[7] == "X") {
      board();
      print("Player Win!");
      return true;
    } else if(boardData[1] == "O" && boardData[4] == "O" && boardData[7] == "O") {
      board();
      print("Bot Win!");
      return true;
    } else if(boardData[2] == "X" && boardData[5] == "X" && boardData[8] == "X") {
      board();
      print("Player Win!");
      return true;
    } else if(boardData[2] == "O" && boardData[5] == "O" && boardData[8] == "O") {
      board();
      print("Bot Win!");
      return true;
    } else if(boardData[0] == "X" && boardData[4] == "X" && boardData[8] == "X") {
      board();
      print("Player Win!");
      return true;
    } else if(boardData[0] == "O" && boardData[4] == "O" && boardData[8] == "O") {
      board();
      print("Bot Win!");
      return true;
    } else if(boardData[2] == "X" && boardData[4] == "X" && boardData[6] == "X") {
      board();
      print("Player Win!");
      return true;
    } else if(boardData[2] == "O" && boardData[4] == "O" && boardData[6] == "O") {
      board();
      print("Bot Win!");
      return true;
    }
    return false;
  }



}