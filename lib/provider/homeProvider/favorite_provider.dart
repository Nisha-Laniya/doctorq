import 'package:flutter/material.dart';
import '../../data/data.dart';

class FavoriteProvider with ChangeNotifier {
  void favorite(index) {
    topDoctor.removeAt(index);
    notifyListeners();
  }
}