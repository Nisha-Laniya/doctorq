import 'package:flutter/material.dart';

class CheckBoxProvider with ChangeNotifier {
  bool isChecked = false;

  void tickCheckBox(bool value) {
    isChecked = value;
    notifyListeners();
  }
}