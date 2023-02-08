import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeProvider({required bool isDarkmode})
      : currentTheme = isDarkmode
            ? ThemeData.dark(useMaterial3: true)
            : ThemeData.light(useMaterial3: true);

  ThemeData currentTheme;

  setLightMode() {
    currentTheme = ThemeData.light(useMaterial3: true);
    notifyListeners();
  }

  setDarkMode() {
    currentTheme = ThemeData.dark(useMaterial3: true);
    notifyListeners();
  }
}
