import 'package:flutter/material.dart';
import '../../data/data.dart';

class FavoriteProvider with ChangeNotifier {
  void favorite(index) {
    favoriteDoctor.removeAt(index);
    notifyListeners();
  }
}