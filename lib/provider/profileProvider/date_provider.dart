import 'package:flutter/material.dart';

class DateProvider with ChangeNotifier {

  DateTime? selectedDate;

  getDateFromUser(BuildContext context) async {
    DateTime? _pickerDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2323),
    );

    if (_pickerDate != null) {
        selectedDate = _pickerDate;
    }
    notifyListeners();
  }
}