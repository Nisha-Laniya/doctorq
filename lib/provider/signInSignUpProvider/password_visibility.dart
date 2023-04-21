import 'package:flutter/material.dart';

class VisibilityProvider with ChangeNotifier {
  bool isPasswordVisible = false;

  void changeVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }
}