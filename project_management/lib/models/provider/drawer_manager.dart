import 'package:flutter/material.dart';

class DrawerManager with ChangeNotifier {
  int current = 0;

  void changeCurrent(int index) {
    current = index;
    notifyListeners();
  }
}
