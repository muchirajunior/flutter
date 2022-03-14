import 'package:flutter/material.dart';

class AppTheme extends ChangeNotifier{
  bool isDarkMode=false;
  

  ThemeMode theme=ThemeMode.light;

  changeTheme() {
      theme= isDarkMode ? ThemeMode.light : ThemeMode.dark;
      isDarkMode = !isDarkMode;
      notifyListeners();
    }

}