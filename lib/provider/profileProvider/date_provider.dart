import 'package:flutter/material.dart';

class DateProvider with ChangeNotifier {

  DateTime? selectedDate;

  getDateFromUser(BuildContext context) async {
    DateTime? pickerDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2323),
    );

    if (pickerDate != null) {
        selectedDate = pickerDate;
    }
    notifyListeners();
  }
}