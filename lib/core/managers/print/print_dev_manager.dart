import 'package:flutter/foundation.dart';

class PrintDev {
  PrintDev._init();

  static PrintDev? _instance;

  static PrintDev get instance {
    return _instance ??= PrintDev._init();
  }

  void debug(dynamic string) {
    if (kDebugMode) {
      print('______________ DEBUG ______________');
      print(string);
      print('***___________ DEBUG ___________***');
    }
  }

  void justPrint(dynamic string) {
    if (kDebugMode) {
      print(string);
    }
  }

  void onRoute(dynamic string) {
    if (kDebugMode) {
      print('______________ ROUTE ______________');
      print(string);
      print('***___________ ROUTE ___________***');
    }
  }

  void viewInit(String string) {
    if (kDebugMode) {
      print('______________ VIEW INIT ______________');
      print(string);
      print('***___________ VIEW INIT ___________***');
    }
  }

  void buildWidget(String string) {
    if (kDebugMode) {
      print('______________ Widget built ______________');
      print(string);
      print('***___________ Widget built ___________***');
    }
  }

  void initState(String string) {
    if (kDebugMode) {
      print('______________ INIT STATE ______________');
      print(string);
      print('***___________ INIT STATE ___________***');
    }
  }

  void dispose(String string) {
    if (kDebugMode) {
      print('______________ DISPOSE ______________');
      print(string);
      print('***___________ DISPOSE ___________***');
    }
  }

  void exception(Object string) {
    if (kDebugMode) {
      print('_________________________ EXCEPTION _________________________');
      print(string);
      print('***______________________ EXCEPTION ______________________***');
    }
  }

  void test(String string) {
    if (kDebugMode) {
      print('_________________________ TEST _________________________');
      print(string);
      print('***______________________ TEST ______________________***');
    }
  }
}
