import 'package:flutter/material.dart';

class ThemeNotifer extends ChangeNotifier {
  bool _isDarkmode = false;

  getTheme() => _isDarkmode;

  void changeAppTheme() {
    _isDarkmode = !_isDarkmode;
    notifyListeners();
  }
}
