import 'package:flutter/material.dart';

class BottomNavigationProvider with ChangeNotifier {
  
  var selectedIndex = 0;
  
  void changeIndex(index) {
    selectedIndex = index;
    notifyListeners();
  }
}