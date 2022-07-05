
import 'dart:io';

class ClearUtil {
  static void clear() {
    if (Platform.isWindows) {
      print(Process
          .runSync("cls", [], runInShell: true)
          .stdout);
    } else {
      print(Process
          .runSync("clear", [], runInShell: true)
          .stdout);
    }
  }
}