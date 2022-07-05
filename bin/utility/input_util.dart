
import 'dart:io';

class InputUtil {

  static int inputInt() {
    stdout.write("Player option : ");
    String? s = stdin.readLineSync();
    if (s != null){
      int n = int.parse(s);
      return n - 1;
    }
    return 0;
  }

  static String inputStr(s1) {
    stdout.write("$s1 : ");
    String? s2 = stdin.readLineSync();
    return s2 as String;
  }

}