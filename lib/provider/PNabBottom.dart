import 'package:flutter/material.dart';

class PNavBottom with ChangeNotifier {
  int _isMenuActive = 1;

  int get isMenuActive => _isMenuActive;

  void set setMenuActive(int i) {
    _isMenuActive = i;
    notifyListeners();
  }
}
